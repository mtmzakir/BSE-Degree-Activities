#include <stdio.h>

int square(int);
int thrice(int);
int main()
{
    int num1 , num2, num3, num4;
    int *n1, *n2;

    printf("Enter the num1: ");
    scanf("%d",&num1);
    printf("Enter the num2: ");
    scanf("%d",&num2);

    if(num1 > 10  || num2 > 10){
        printf("Please Enter Numbers Less Than 10!");
    }

    else{

        if (num1 >= num2 ){
             printf("\nThe Square Num1 is: %d",square(num1));
             num3 = square( num1);
             printf("\nThe Square Num1 as Num3 is: %d",num3);
             printf("\n\nTwice Value of num2 is: %d", thrice(num2));
             num4 = thrice(num2);
             printf("\nTwice value of num2 as num4: %d",num4);

             n1 = &num1;
             n2 = &num3;

             printf("\n\nThe Sum of Num1 and Num3 is: %d",*n1 + *n2);
             printf("\nThe Product of Num1 and Num3 is: %d",(*n1) * (*n2));
             printf("\nThe Differece of Num1 and Num3 is: %d",*n2 - *n1);
             printf("\nThe Quotient of Num1 and Num3 is: %f",*n1 / *n2);

        }

        else{
            printf("Num1 must be input greater than num2!");
        }
    }

    return 0;
}


//Square Function
int square(int a) // Argument Passing
{
    int sqr = a * a;
    return sqr; //Return the squre value
}


//thrice Function
int thrice(int b) //Argument Passing
{
    int trc = b * 3;
    return trc; //Return the thrice value of num2
}