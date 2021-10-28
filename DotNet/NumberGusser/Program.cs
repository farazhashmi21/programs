using System;
/**
Progrmm descrition:

Project: Build a Number Guessing Game.

Description: A user will have to guess the number generated randomly.

Conditions:
    * If the number is correct, then user should WIN the game.
    * If it is not correct the program will continue to execute till the correct number is found by the user.
**/
namespace NumberGusser
{
    class Program
    {
        public void display(){
            Console.WriteLine("Hello World!");
            }
        static void Main(string[] args)
        {
            try{
                functions functions = new functions();
//                functions.playTheGame();
                string answer = "";
                do{
                    functions.playTheGame();
                    Console.WriteLine("Do you want to cotinue (y/n):");
                    answer = Console.ReadLine().ToLower();
                    if(answer == "n"){
                        break;
                    }
                    }while(true);
            }catch(Exception catchErrr){
                Console.WriteLine("Error Occur: "+catchErrr.Message+".");
            }
        }
    }
}
