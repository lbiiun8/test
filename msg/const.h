#pragma once

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

#define MSG_KEY	0x1234567E

#include <cstring>

struct msg_buf
{
	msg_buf( const char m[])
	{
		msgtype = 10;
		strcpy(msg, m);
	}
	long msgtype;
	char msg[1024];
};

