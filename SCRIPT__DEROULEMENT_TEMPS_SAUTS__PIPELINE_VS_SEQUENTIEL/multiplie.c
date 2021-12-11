#include<stdio.h>
#include<stdlib.h>

long long int multiplier(int n);

int main(int argc, char* argv[])
{
  int n=1000000;
  printf("le nombre de ticks du processeur pour ces %d instructions imul est:%lld\n",n,multiplier(n));
return 0;
}
