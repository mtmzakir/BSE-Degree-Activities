#Eligibility Program

name = str(input("Enter the Name: "))
age = int(input("Enter the Age: "))
city = str(input("Enter the City: "))
mark = int(input("Enter the Maths Mark: "))

if mark >= 50:
    print("Name - ",name)
    print("Age - ", age)
    print("You are eligible for the program")
else:
    print("Name - ",name)
    print("Age - ", age)
    print("You are Not eligible for the program")