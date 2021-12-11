#include<stdio.h>
#include<stdlib.h>

long long int multiplier2(int n);

int main(int argc, char* argv[])
{
  int n=1000004;
  printf("Temps en cycle pour %d sera:%lld\n",n,multiplier2(n));
  return 0;
}
