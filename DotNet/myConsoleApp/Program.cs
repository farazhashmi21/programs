using System;

namespace myConsoleApp
{
    class Program
    {
        private String yourNamePlease;
        public Program(){
        }
        private double answer;
        public void displ(){
            Console.WriteLine("Hello World!");
            Console.WriteLine("Enter you SWEET name please: ");
            yourNamePlease = Console.ReadLine();
            Console.Clear();
            Console.WriteLine("Nice to meet you "+yourNamePlease+".");
            Console.WriteLine("Have a nice day "+yourNamePlease+".");
            Console.WriteLine("Enjoy Development with C# "+(yourNamePlease)+".");
            Console.WriteLine("Press enter to exit "+(yourNamePlease)+".");
            Console.ReadLine(); // Wating for user to exit.
            Console.WriteLine("Bye "+yourNamePlease+".");
        }
        public double[] inputNumber(){
            double[] results = new double[2];
            Console.WriteLine("Enter some values to fill a array: ");
            int count = 0;
            int getArrayLength = results.Length-1;
            while(count < getArrayLength){
                results[count] = Convert.ToDouble(Console.ReadLine());
                count++;
            }
            return results;
        }
        public void executer(){
                Program pro = new Program(); // C# Class Object.
            //                pro.displ(); // C# Object Calls Class Method.
                 functions fncts = new functions();
                 double[] getNumberValues = (pro.inputNumber());
                 pro.answer = (fncts.mathAddition(getNumberValues[0],getNumberValues[1]));
                 Console.WriteLine("The answer is: "+pro.answer.ToString()+".");
                 pro.answer = (fncts.mathSubstraction(getNumberValues[0],getNumberValues[1]));
                 Console.WriteLine("The answer is: "+pro.answer.ToString()+".");
                 pro.answer = (fncts.mathMultiplication(getNumberValues[0],getNumberValues[1]));
                 Console.WriteLine("The answer is: "+pro.answer.ToString()+".");
                 pro.answer = (fncts.mathDivision(getNumberValues[0],getNumberValues[1]));
                 Console.WriteLine("The answer is: "+pro.answer.ToString()+".");
        }
        static void Main(string[] args)
        {
            try{
                Program pros = new Program();
                pros.displ();
                //functions functions = new functions();
                //functions.appDetails();
                //functions.conditions();
                //functions.arraysUsage();
                //functions.plaindrome(777);
            }catch(Exception errrr){
                Console.WriteLine("Error Occur: "+errrr.Message+".");
            }finally{
                Environment.Exit(0);
                }
                }
                }
}