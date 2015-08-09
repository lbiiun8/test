#include <cstdio>
#include <string>

using namespace std;

int main()
{
	string s;
	char c = 0;
	s.append(&c, 1);
	s.append(&c, 1);
	s.append(&c, 1);

	string s2 = s + s;

	printf("print\n");

	for ( auto it : s2 )
	{
		printf("%02X ", it);
	}
	printf("\n");
	return 0;
}

