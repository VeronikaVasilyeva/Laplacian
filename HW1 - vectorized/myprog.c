#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 100000000

double d1[N], d2[N];
float f1[N], f2[N];

int main(void) {

    double v1[N], v2[N];
    double result1 = 0;
    float result2 = 0;
    int i, j;

    for (i = 0; i < N; i++ ) {
	d1[i] = i * 33.146;
	d2[i] = i/2.55;

	f1[i] = i * 3.1;
	f2[i] = i/2.3;
    } 

    time_t startD = clock();

    for (j = 0; j < N; j++) {
	result1 += d1[j]*d2[j];
    } 

    time_t endD = clock();

//============FLOAT==================

    time_t startF = clock();

    for (j = 0; j < N; j++) {
	result2 += f1[j]*f2[j];
    } 

    time_t endF = clock();

    double r1 = endD - startD;
    float r2 = endF - startF;

    printf("double result:  %.3lf\n", result1);
    printf("float result:  %f\n", result2);
    
    printf("The duration for double numbers:  %.3lf\n", r1/(double) CLOCKS_PER_SEC);
    printf("The duration for float numbers:  %f\n", r2/(float) CLOCKS_PER_SEC);

    return 0;
}