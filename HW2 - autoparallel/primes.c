#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#define N 100000
int isPrime[N];

int main(void)
{
    	int i = 0;
	int k;
	isPrime[2] = 1;		//0,1 - непростые, 2 - простое
    	int count;	

    	clock_t begin = clock();
	
	//init
    	for (i = 3; i < N; i = i + 2)
	{
		isPrime[i] = 1;
	}

    	for (i = 3; i < N; i = i + 2)
    	{
		int m = (int) i / 2;
	    	for (k = 2; k <= m; k = k + 2)
	    	{
	        	if (isPrime[i] == 0) continue;
	        	if (i % k == 0) isPrime[i] = 0;
	    	}
    	}
    	
	for (i = 2; i < N; i++) 
    	{
    		count += isPrime[i];
    	}

	double spent = (double)(clock()- begin) / CLOCKS_PER_SEC;
	printf("Count: %i\n", count);
	printf("Time: %f\n", spent);

	return 0;
}