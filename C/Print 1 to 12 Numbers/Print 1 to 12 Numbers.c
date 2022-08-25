#include <stdio.h>

void main() {
    int num;
    printf("Hint: Enter a Number less than 12 \n");
    scanf("%d",&num);
    
    if (num<0 || num>12) {
        printf("\n Incorrect Value!",num);
    }
    
    else {
        if (num<5) {
        for(int i=1;i!=num+1;i++){
            for(int x=0;x!=i;x++){
                printf("%d",num);
                }
            printf("\n");
            }
        }
    else {
        for(int i=1;i!=num+1;i++){
            for(int x=0;x!=num;x++){
                printf("%d",num);
                }
            printf("\n");
            }
        }
    }
}
