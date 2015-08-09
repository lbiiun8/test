#include "TimeCost.h"

#include <time.h>

#include <iostream>

using namespace std;

void print(const timespec &ts)
{
	cout << "time: " << ts.tv_sec << "." << ts.tv_nsec << endl;
}

template <typename T>
void print(const T& v)
{
	cout << v << endl;
}


TimeCost::TimeCost()
{
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC_RAW, &ts);
	m_llStart = ts.tv_sec + (double)ts.tv_nsec / 1000000000 ;
}

TimeCost::~TimeCost()
{
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC_RAW, &ts);
	m_llCost = ts.tv_sec + (double)ts.tv_nsec / 1000000000 ;
	m_llCost -= m_llStart;
	print(m_llCost);
}


