#include <sys/mman.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h> 
#include <sys/types.h> 
#include <sys/stat.h> 
#include <fcntl.h>
#include <time.h>
int main(int argc, char** argv){ 
    double time_spent = 0.0;
    clock_t begin = clock();
    //Creates a file 
    int fd = open("./file.txt",O_RDONLY, S_IRUSR | S_IWUSR); 
    struct stat sb; 
    //get the size of file 
    if(fstat(fd,&sb) == -1){ 
         perror("error, couldn't get file size \n"); 
    } 
    printf("file size is %ld\n", sb.st_size); 
    //map file into memory - 0 -> beginning of file 
    char *file_in_memory = mmap(NULL, sb.st_size, 
                                PROT_READ,MAP_PRIVATE,    fd,0); 
    clock_t end = clock();
    // calculate elapsed time by finding difference (end - begin) and
    // dividing the difference by CLOCKS_PER_SEC to convert to seconds
    time_spent += (double)(end - begin) / CLOCKS_PER_SEC;
    printf("The elapsed time is %f seconds", time_spent);
    printf("\n");
    munmap(file_in_memory, sb.st_size); 
    close(fd); 
}
