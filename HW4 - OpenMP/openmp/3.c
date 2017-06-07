#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>

int main()
{
    const long int N = 10000000;
    double time = omp_get_wtime();
    double sum = 0.0;
    long int i;
    for(i=0; i<N; i++)
    {
	sum += sin(i);
    }
    time = omp_get_wtime() - time;
    printf("Without parallel time: %f\n", time);

//=========================================================================
    time = omp_get_wtime();
    sum = 0.0;

    int num = omp_get_num_procs();
    #pragma omp parallel for num_threads(num) reduction(+:sum)
    for(i=0; i<N; i++)
    {
	sum += sin(i);
    }
    time = omp_get_wtime() - time;
    printf("Parallel time: %f\n", time);
    
    return 0;
}