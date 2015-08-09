#include <iostream>

using namespace std;

class Single
{
	public:
		static Single* GetInstance()
		{
			if (0 == s_pInstance)
			{
				pthread_mutex_lock(&s_mutex);
				if (0 == s_pInstance)
				{
					s_pInstance = new Single();
				}
				pthread_mutex_unlock(&s_mutex);
			}
			return s_pInstance;
		}


	private:
		static Single* 			s_pInstance;
		static pthread_mutex_t 	s_mutex;
		Single()  {}
		~Single() {}
};

Single* Single::s_pInstance = 0;
pthread_mutex_t Single::s_mutex = PTHREAD_MUTEX_INITIALIZER;


int main()
{
	Single * p = Single::GetInstance();
//	delete p;
	return 0;
}

