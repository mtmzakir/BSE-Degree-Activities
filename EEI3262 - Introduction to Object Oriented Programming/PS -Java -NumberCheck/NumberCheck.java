import java.util.Scanner;
public class NumberCheck 
{
    public static void main(String[] args) 
    {
        int n;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter the Number >>> ");
        n = s.nextInt();
        if(n > 0)
        {

            System.out.println("The number "+n+" is Positive");
        }
        else if(n < 0)
        {
            System.out.println("The number "+n+" is Negative");
        }
        else
        {
            System.out.println("The number "+n+" is not negative or positive ");
        }
    }
}