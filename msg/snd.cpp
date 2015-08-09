#include <unistd.h>
#include "const.h"
#include <cassert>
#include <cstring>
#include <iostream>
#include <errno.h>
#include <string.h>

using namespace std;


int main()
{
	msg_buf msg("msg test");
	auto k = msgget(MSG_KEY, IPC_CREAT|0666);
	assert(k >= 0);

	for (auto i = 0; i < 100; ++i)
	{
		auto r = msgsnd(k, &msg, sizeof(msg) - sizeof(long), 0);
		cout << i << ":  " << r << ": " << strerror(errno) << endl;
	}


	return 0;
}

