#include <iostream>
#include <unistd.h>

int main(int argc, char const *argv[])
{
  int i;
  i = 0;
  while ( i < 100)
  {
  	std::cout << "Hello Docker container!" << std::endl;
	usleep(10000000);
	i++;
  }
  return 0;
}
