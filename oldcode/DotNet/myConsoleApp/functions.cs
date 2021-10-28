using System;

namespace myConsoleApp
{
class functions{
    public functions(){
//        Console.WriteLine("It's working as Expected!");
    }
    // Mathematical Basic Four Operations: Addition, Substraction, Multiplication and Division
    private double[] calcu = new double[3];
    public double mathAddition(double var = 0.00, double num = 0.00){
        calcu[0] = var; calcu[1] = num;
        calcu[2]= (calcu[0] + calcu[1]);
        return calcu[2];
    }
   public double mathSubstraction(double var = 0.00, double num = 0.00){
        calcu[0] = var; calcu[1] = num;
        calcu[2]= (calcu[0] - calcu[1]);
        return calcu[2];
    }
   public double mathMultiplication(double var = 0.00, double num = 0.00){
        calcu[0] = var; calcu[1] = num;
        calcu[2]= (calcu[0] * calcu[1]);
        return calcu[2];
    }
   public double mathDivision(double var = 0.00, double num = 0.00){
        calcu[0] = var; calcu[1] = num;
        calcu[2]= (calcu[0] / calcu[1]);
        return calcu[2];
    }
    public void appDetails(){
        string[] appDetails = new string[3];
        appDetails[0]="Number Gusser"; appDetails[1]="1.0"; appDetails[2]="Faraz Hashmi";
        Console.ForegroundColor = (ConsoleColor.Green);
        Console.WriteLine("{0}, Version: {1}, Developed By {2}",appDetails[0],appDetails[1],appDetails[2]);
        Console.ResetColor(); Console.WriteLine("Press enter to continue"); Console.ReadLine();
    }
    public void conditions(){
        // If Statement
        int age = 20;
        if(age >= 20){
            Console.WriteLine("You can DRIVE!");
        }
        // If else Statement
        age = 15;
        if(age < 10){
            Console.WriteLine("You can DRIVE");
        }
        else{
            Console.WriteLine("Grow up and you can DRIVE");
        }
        // If elseif statement
        // Let user Drive when they are greater than 20 years but less then or euqal to 60
        age = 22;
        if(age > 20 && age <= 60){
            Console.WriteLine("You can DRIVE, but Stay Safe.");
        }else if(age > 60 && age <= 1000){
            Console.WriteLine("Driving is not safe for you.");
        }
        else{
            Console.WriteLine("Just a KID!, it will be better for you to play with your remote controll car.");
            }
        switch(age){
            case 22:{
                 Console.WriteLine("You can DRIVE buddy.");
                 break;
                 }
                 default:{
                     Console.WriteLine("Driving will be dangerous.");
                     break;
                 }
        }
    }
    public void arraysUsage(){
        try{
            string[] coordinates = {"NORTH","SOUTH","EAST","WEST"};
            Console.ForegroundColor = (ConsoleColor.Green);
            Console.WriteLine("We have houses available in: ");
            foreach(string i in coordinates){
                Console.WriteLine("House in {0}",i);
            }
            Console.ResetColor();
        }catch(Exception errr){
            Console.WriteLine("Error occur: "+errr+".");
        }
    }
    public void plaindrome(int numb = 545){
        int r,sum=0,temp; int n=numb;//It is the number variable to be checked for palindrome  
        temp=n;
        while(n>0){
            r=n%10;  //getting remainder
            sum=(sum*10)+r;
            n=n/10;
            }
            if(temp==sum)
            Console.WriteLine( numb + " is a palindrome number.");
            else{
                Console.WriteLine(numb + " is not palindrome");
            }
    }
    }
}