import java.util.Scanner;
public class SalaryCalculate{
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
		String emp_ID;
		String Emp_name;
		double Emp_salary;
		
			System.out.println("enter ID  :");
			emp_ID = input.nextLine();
			System.out.println("enter Name  :");
			Emp_name = input.nextLine();
			System.out.println("enter Salary  :");
			Emp_salary = input.nextDouble();

			System.out.println("Employee ID is :" + emp_ID);
			System.out.println("Employee Name  is :" + Emp_name);
			System.out.println("Final Salary  is :" + Emp_salary);
		
    }
}