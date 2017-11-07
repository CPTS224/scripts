#include<stdio.h>
#include<stdlib.h>

double computeAverage(int arr[], int num);
void produceWeirdValue(int arr[]);
void causeAbortTrap();
void causeSegFault();
void doubleFree();

double computeAverage(int arr[], int num) {
    int sum=0; 
    for( int i=0; i<num; ++i ) {
        sum+=arr[i];
    }

    return sum/num;
}

void produceWeirdValue(int arr[]) {
    double average = computeAverage(arr, 3);
    printf("Average: %f\n", average);

    return;
}

void causeAbortTrap() {
    // abort trap 6 (writing memory we don't own)
    int arr[10];
    for( int i=0; i<10; ++i ) {
        arr[i] = i;
    }
    arr[11] = 43;

    return;
}

void causeSegFault() {
    //char *x;
    //printf(x);

    //*(char *)0 = 0;
    
    int *ptr;
    ptr = malloc(-1);
    printf("%i\n", &ptr);
    ptr[0] = 4;
    printf("%i\n",ptr[0]);

    return;
}

void doubleFree() {
    int *ptr;
    ptr = (int *)malloc(sizeof(int));
    free(ptr);
    free(ptr);

    return;
}

int main()
{
    int len = 2;
    int arr[len];

    for( int i=0; i<len; ++i ) {
        arr[i] = i;
    }
    double average = computeAverage(arr, len);
    printf("***This will work***\n");
    printf("Average: %f\n\n", average);
    
    //printf("***This will produce a weird value***\n");
    //produceWeirdValue(arr);
    //printf("\n");

    //printf("***This will cause an abort***\n");
    //causeAbortTrap();
    //printf("\n");

    printf("***This will cause a seg fault***\n");
    causeSegFault();
    printf("\n");

//    printf("***This will free an already freed pointer***\n");
//    doubleFree();
//    printf("\n");

    return 0;
}
