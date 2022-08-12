#include <stdio.h> 
#include <stdlib.h> 
#include <string.h> 
#include <time.h> 
int main(){ 
     double time_spent = 0.0;
     clock_t begin = clock();
     int i; 
     FILE * fileName; 
     char c; 
     /*Creates file*/ 
     fileName = fopen("file.txt", "w"); 
     /*Writes in file*/ 
     for (i=0; i<=50000; i++){ 
          fputs("This is a test in a container \n", fileName);     
          fflush(fileName);
      } 
      fclose(fileName); 
      /*Reading file*/ 
      fileName = fopen("file.txt", "r"); 
      printf("Exit"); 
      /*Clearing buffer*/ 
      while (getchar() != '\n'); 
      fclose(fileName); 
      clock_t end = clock();
      time_spent += (double)(end - begin) / CLOCKS_PER_SEC;
      printf("The elapsed time is %f seconds", time_spent);
      printf("\n");
      return 0; 
}
