#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <mkl.h>

#define N 1000

int main(void)
{
	double time;
	int i = 0;
	int j = 0;
    	int k = 0;
    	double *dA, *dB, *dC;
    	float  *fA, *fB, *fC;

	dA = (double *)mkl_malloc( N*N*sizeof( double ), 64 );
    	dB = (double *)mkl_malloc( N*N*sizeof( double ), 64 );
    	dC = (double *)mkl_malloc( N*N*sizeof( double ), 64 );

	fA = (float *)mkl_malloc( N*N*sizeof( float ), 64 );
    	fB = (float *)mkl_malloc( N*N*sizeof( float ), 64 );
    	fC = (float *)mkl_malloc( N*N*sizeof( float ), 64 );

	for(i = 0; i < N; i++)
	{
		for(j = 0; j < N; j++)
		{
	        	dA[N*i + j] = (double)(i + j);
	        	dB[N*i + j] = (double)(N*N);
	        	dC[N*i + j] = (double)5;

	        	fA[N*i + j] = (float)(i + j);
	        	fB[N*i + j] = (float)(N*N);
	        	fC[N*i + j] = (float)5;
		}
    	}

    	time = clock();

    	cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, N, N, N, 1, fA, N, fB, N, 0, fC, N);

	printf("Float:\n");
	time = (double)(clock() - time) / CLOCKS_PER_SEC;
	printf("fC[0][0] = %f\n", fC[0]);
	printf("Time: %f\n", time);
//=====================================================================================================
    	time = clock();

    	cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, N, N, N, 1, dA, N, dB, N, 0, dC, N);

	printf("Double:\n");
	time = (double)(clock() - time) / CLOCKS_PER_SEC;
	printf("dC[0][0] = %f\n", dC[0]);
	printf("Time: %f\n\n", time);
 
 	mkl_free(dA);
 	mkl_free(dB);
 	mkl_free(dC);
 	mkl_free(fA);
 	mkl_free(fB);
 	mkl_free(fC);

	return 0;
}