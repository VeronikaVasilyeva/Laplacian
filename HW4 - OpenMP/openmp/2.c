#include <stdio.h>
#include <stdlib.h>
#include <omp.h>


void fill_rand(long int *arr, long int count, long int range)
{
    srand(time(NULL));
    int i;
    for(i=0; i<count; i++)
    {
		arr[i] = rand() % (range);	
    }
}

int main()
{
    const long int aN = 100000;
    const long int bN = 100000;
    long int *a1, *a2, *b;
    a1 = (long int*) malloc(aN*sizeof(long int));
    a2 = (long int*) malloc(aN*sizeof(long int));
    
    long int i;
    for(i=0; i< aN; i++)
    {
	a1[i] = 0;
	a2[i] = 0;
    }

    b = (long int*) malloc(bN*sizeof(long int));
    for(i=0; i<bN; i++)
    {
	b[i] = rand() % (bN);	//от 0 до n-1
    }    

    double time = omp_get_wtime();

    for(i=0; i<bN; i++)
    {
	a1[b[i]]++;
    }
    time = omp_get_wtime() - time;
    printf("Without parallel time: %f\n", time);
//=========================================================================
    int num = omp_get_num_procs();
    time = omp_get_wtime();
    #pragma omp parallel for num_threads(num) schedule(guided)
    for(i=0; i<bN; i++)
    {
	#pragma omp atomic
        a2[b[i]]++;
    }
    time = omp_get_wtime() - time;
    printf("Parallel time: %f\n", time);

    free(a1);
    free(a2);
    free(b);
    return 0;
}
