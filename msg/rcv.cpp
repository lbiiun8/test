#include <cstdio>
#include <unistd.h>
#include "const.h"
#include <cassert>

int main()
{
	msg_buf msg("");
	auto k = msgget(MSG_KEY, IPC_CREAT|0666);
	assert(k >= 0);

	for (auto i = 0; i < 100; ++i)
	{
		if (msgrcv(k, &msg, sizeof(msg), 0, 0)  > 0)
			printf("%s\n", msg.msg);
	}


	return 0;
}

