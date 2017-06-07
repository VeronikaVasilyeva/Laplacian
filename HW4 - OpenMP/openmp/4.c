#include <stdio.h>
#include <omp.h>

#define N 1000

int main()
{
	int i, j, amount;
	static int isPrime[N+1];
    	for(i=0;i<=N;i++) isPrime[i] = 0;
    	
	int count = 0;
	double time = omp_get_wtime();
	int num = omp_get_num_procs();
	#pragma omp parallel for num_threads(num) schedule(guided) private(i, div)
	for(i=2; i<=N; i++)
	{
		div = 0;
		for(j=2; j<=i/2; j++)
		{
			if(i % j == 0) amount++;
		}
		if(amount == 1) isPrime[j] = 1;
	}

	for(i=2;i<=N;i++)
	{
    		count += isPrime[i];
    	}
	time = omp_get_wtime() - time;
	
	printf("Prime numbers: %d\n", count);
	printf("Time: %f\n", time);
	return 0;
}