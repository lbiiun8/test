#include <iostream>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h> //sockaddr_in
#include <sys/epoll.h>

#include <unistd.h>
#include <cstring>
#include <string>
#include <errno.h>

//////////////////////////////////
// inet_addr
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
///////////////////////////
#include <netdb.h>


#include "TimeCost.h"

using namespace std;

int connect_to( const string &host, const short port )
{
	auto s = socket(AF_INET, SOCK_STREAM, 0);
	sockaddr_in sa;
	bzero(&sa, sizeof(sa));
	auto & addr 	= sa.sin_addr;
	sa.sin_family 	= AF_INET;
	sa.sin_port 	= htons(port);
	addr.s_addr	= inet_addr(host.c_str());
	if (INADDR_NONE != addr.s_addr)
	{
		int ret = connect(s, (sockaddr *)&sa, sizeof(sa));
		if (ret != 0)
		{
			cout << strerror(errno) << endl;
		}
		return s;
	}
	struct addrinfo hint;
	struct addrinfo *addrinfo = NULL;

	hint.ai_family = sa.sin_family;
	hint.ai_socktype = SOCK_STREAM;
	getaddrinfo(host.c_str(), NULL, &hint, &addrinfo);
	for (auto iter = addrinfo; iter != NULL; iter = iter->ai_next)
	{
		addr = ((struct sockaddr_in *)iter->ai_addr)->sin_addr;
		char ipstr[17];
		inet_ntop(AF_INET, &addr.s_addr, ipstr, sizeof(ipstr));
		cout << ipstr << endl;
		if (0 == connect(s, (sockaddr *)&sa, sizeof(sa)))
			break;
	}

	freeaddrinfo(addrinfo);

	return s;
}

int main(int argc, char *argv[])
{
	const string 	host = argc > 1 ? argv[1] : "127.0.0.1";
	short 			port = argc > 2 ? (short)atoi(argv[2]) : 12345;
	epoll_event ev;
	ev.events 	= EPOLLIN;
	ev.data.fd 	= connect_to(host, port);
	int ep = epoll_create(1024);

	char recv_buff[1024];
	int  recv_size;

	epoll_ctl(ep, EPOLL_CTL_ADD, ev.data.fd, &ev);

	auto * tc_print = new TimeCost();
//	send(ev.data.fd, "a", 1, 0);
	while (epoll_wait(ep, &ev, 1, -1) > 0)
	{
		cout << "events: " << ev.events << endl;
		cout << "fd: " << ev.data.fd << endl;

		recv_size = recv(ev.data.fd, &recv_buff, sizeof(recv_buff), 0);
		cout << "recv size: " << recv_size << endl;
		delete tc_print;
		if (recv_size > 0)
		{
			tc_print = new TimeCost();
			send(ev.data.fd, &recv_buff, recv_size, 0);
		}
		else if (recv_size == 0)
		{
			close(ev.data.fd);
		}
	}
	return 0;
}

