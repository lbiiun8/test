#include <iostream>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h> //sockaddr_in
#include <sys/epoll.h>

#include <unistd.h>

#include <cstring>

using namespace std;

int init_listen_socket(short port)
{
	auto s = socket(AF_INET, SOCK_STREAM, 0);
	sockaddr_in sa;
	bzero(&sa, sizeof(sa));
	sa.sin_family 		= AF_INET;
	sa.sin_addr.s_addr	= INADDR_ANY;
	sa.sin_port  		= htons(port);
	bind(s, (sockaddr *)&sa, sizeof(sa));
	listen(s, 5);

	return s;
}

int main(int argc, char *argv[])
{
	short port = argc > 1 ? (short)atoi(argv[1]) : 12345;
	auto s = init_listen_socket(port);
	int ep = epoll_create(1024);
	epoll_event ev;
	ev.events = EPOLLIN;
	ev.data.fd = s;

	char recv_buff[1024];
	int  recv_size;

	epoll_ctl(ep, EPOLL_CTL_ADD, s, &ev);
	while (epoll_wait(ep, &ev, 1, -1) > 0)
	{
		cout << "events: " << ev.events << endl;
		cout << "fd: " << ev.data.fd << endl;
		if (ev.data.fd == s) // listen socket
		{
			if (ev.events & EPOLLIN)
			{
			 	ev.data.fd = accept(s, NULL, NULL);
				ev.events = EPOLLIN;
				epoll_ctl(ep, EPOLL_CTL_ADD, ev.data.fd, &ev);
			}
			else
			{
				epoll_ctl(ep, EPOLL_CTL_DEL, s, NULL);
				ev.data.fd = s = init_listen_socket(port);
				ev.events = EPOLLIN;
				epoll_ctl(ep, EPOLL_CTL_ADD, s, &ev);
			}
		}
		else // client socket
		{
			recv_size = recv(ev.data.fd, &recv_buff, sizeof(recv_buff), 0);
			cout << "recv size: " << recv_size << endl;
			if (recv_size > 0)
			{
				send(ev.data.fd, &recv_buff, recv_size, 0);
			}
			else if (recv_size == 0)
			{
				close(ev.data.fd);
			}
		}
	}
	return 0;
}

