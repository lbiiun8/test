#include <iostream>

using namespace std;

class B
{
	public:
		const B* operator=(const B&)
		{
			cout << __PRETTY_FUNCTION__ << endl;
		}
};

class D : public B
{
	public:
		const D* operator=(const D&)
		{
			cout << __PRETTY_FUNCTION__ << endl;
		}
};

int main()
{
	D  a,b;
	a = b;
	return 0 ;
}

