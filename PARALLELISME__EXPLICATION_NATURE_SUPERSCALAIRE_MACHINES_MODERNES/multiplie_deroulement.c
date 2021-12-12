#include<stdio.h>
#include<stdlib.h>
long long int multiplier2(int n);

int main(int argc, char* argv[])
{
  int n=1000004;
  printf("temps d'execution en nombre de cycles pour %d est:%lld\n",n,multiplier2(n));
  return 0;
}
