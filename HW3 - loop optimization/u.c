#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 1000000
double A[N];
double D[N];
double C[N];

int main(void)
{
	int i = 0;
	for(i=0;i<N;i++)
	{
		A[i] = i * 199;
		C[i] = 0;
		D[i] = 0;
    	}

    	double time = clock();
    	for(i=0;i<N;i++)
	{
    		C[i] = A[i] * 9;
    		if (555555 < 1000000) D[i] = A[i];
    	}
	time = (double)(clock() - time) / CLOCKS_PER_SEC;
	printf("C[N-1]: %f\n", C[N-1]); 
	printf("D[N-1]: %f\n", D[N-1]); 	
	printf("Without unswitching time: %f\n\n", time); 
//============================================================================
	time = clock();
	if (555555 < 1000000)
	{
		for(i=0;i<N;i++)
		{
	    		C[i] = A[i] * 9;
	    		D[i] = A[i];
    		}
	} else
	{
		for(i=0;i<N;i++)
		{
	    		C[i] = A[i] * 9;
    		}
	}
	time = (double)(clock() - time) / CLOCKS_PER_SEC;
	printf("C[N-1]: %f\n", C[N-1]); 
	printf("D[N-1]: %f\n", D[N-1]); 
	printf("Unswitched time: %f\n\n", time);
 
	return 0;
}