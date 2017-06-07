#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>

const long int N = 1000*1000*100;

int main()
{   
    static double *a;
    a = (double*) malloc(N*sizeof(double));
    long int i;

    for(i=0; i<N; i++)
    {
	a[i] = (double) i;
    }
        
    double time = omp_get_wtime();
    for(i=0; i<N; i++)
    {
	a[i] = sin(a[i]);
    }
    time = omp_get_wtime() - time;
    printf("Without parallel time: %f\n", time);
    
//=================================================================

    time = omp_get_wtime();
    #pragma omp parallel for
    for(i=0; i<N; i++)
    {
	a[i] = (double) i;
    }
    #pragma omp parallel for
    for(i=0; i<N; i++)
    {
		a[i] = sin(a[i]);
    }
    time = omp_get_wtime() - time;
    printf("Parallel time: %f\n", time);

    free(a);
    return 0;
}