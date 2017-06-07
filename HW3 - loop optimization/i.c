#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 1000
double A[N][N];
double B[N][N];
double C[N][N];

int main(void)
{
	int i = 0;
	int j = 0;
	for(i=0;i<N;i++)
	{
		for(j=0;j<N;j++)
		{
	        	A[i][j] = ( i % (j + 1)) * 99;
	        	B[i][j] = ( j / (i + 1)) * 199;
	       		C[i][j] = 0;
	    	}
    	}

    	double time = clock();
    	for(i=0;i<N;i++)
	{
		for(j=0;j<N;j++)
		{
			C[i][j] = A[i][j] + B[i][j];
	    	}
    	}
	time = (double)(clock() - time) / CLOCKS_PER_SEC;
	printf("C[0][0] = %f\n", C[0][0]);
	printf("Without interchange Time ij: %f\n\n", time);
 //==========================================================================
    	time = clock();
    	for(j=0;j<N;j++)
	{
		for(i=0;i<N;i++)
		{
			C[i][j] = A[i][j] + B[i][j];
	    	}
    	}
	time = (double)(clock() - time) / CLOCKS_PER_SEC;
	printf("C[0][0] = %f\n", C[0][0]);
	printf("Interchange Time ji: %f\n\n", time);
	return 0;
}