#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 1000

int main(void)
{
	double time;
	int i = 0;
	int j = 0;
    	int k = 0;

	double **dA = malloc(N * sizeof *dA);
	double **dB = malloc(N * sizeof *dB);
	double **dC = malloc(N * sizeof *dC);
	int size = N * sizeof *dA[i];

	for (i = 0; i < N; i++) 
	{
    		dA[i] = malloc(size);
    		dB[i] = malloc(size);
    		dC[i] = malloc(size);
	}

	float **fA = malloc(N * sizeof *fA);
	float **fB = malloc(N * sizeof *fB);
	float **fC = malloc(N * sizeof *fC);
	size = N * sizeof *fA[i];

	for (i = 0; i < N; i++) 
	{
    		fB[i] = malloc(size);
    		fA[i] = malloc(size);
    		fC[i] = malloc(size);
	}

	for(i = 0; i < N; i++)
	{
		for(j = 0; j < N; j++)
		{
	        	dA[i][j] = (double)(i + j);
	        	dB[i][j] = (double)(N*N);
	        	dC[i][j] = (double)5;

	        	fA[i][j] = (float)(i + j);
	        	fB[i][j] = (float)(N*N);
	        	fC[i][j] = (float)5;
		}
    	}

    	time = clock();

    	for(i = 0; i < N; i++)
	{
		for(j = 0; j < N; j++)
		{
			for(k = 0; k < N; k++)
			{
		       		fC[i][j] = fC[i][j] + fA[i][k] * fB[k][j];
		    	}
	    	}
    	}
	time = (double)(clock() - time) / CLOCKS_PER_SEC;
	printf("Float:\n");
	printf("fC[0][0] = %f\n", fC[0][0]);
	printf("Time: %f\n", time);

	//===================================================================

    	time = clock();

    	for(i = 0; i < N; i++)
	{
		for(j = 0; j < N; j++)
		{
			for(k = 0; k < N; k++)
			{
		        	dC[i][j] = dC[i][j] + dA[i][k] * dB[k][j];
		    	}
	    	}
    	}
	printf("Double:\n");
	time = (double)(clock()- time) / CLOCKS_PER_SEC;
	printf("dC[0][0] = %f\n", dC[0][0]);
	printf("Time is: %f\n\n", time);
 
 	free(dA);
 	free(dB);
 	free(dC);
 	free(fA);
 	free(fB);
 	free(fC);
	return 0;
}