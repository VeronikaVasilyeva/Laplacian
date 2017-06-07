#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 500
double A[N][N];
double B[N][N];
double C[N][N];

int main(void)
{
	int i = 0;
	int j = 0;
    	int k = 0;

	//init matrixs
	#pragma parallel
	for(i = 0; i < N; i++)
	{
		int r = rand();
		//LOOP WAS AUTO-PARALLELIZED.
		for(j = 0; j < N; j++)
		{
	        	A[i][j] = (r % 3);
	        	B[i][j] = (r % 4);
	 	}
    	}

    	clock_t begin = clock();

	//LOOP WAS AUTO-PARALLELIZED.
    	for(i = 0; i < N; i++)
	{
		for(j = 0; j < N; j++)
		{
			for(k = 0; k < N; k++)
			{
		        	C[i][j] += A[i][k] * B[k][j];
		    	}
	    	}
    	}
	clock_t end = clock();
	double spent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("C[0][0] = %f\n", C[0][0]);
	printf("Duration is: %f\n", spent);
 
	return 0;
}