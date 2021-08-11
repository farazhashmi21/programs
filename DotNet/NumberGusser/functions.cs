using System;
namespace NumberGusser{
class functions{
    private int randomNumber;
    private int guessNumber;
    private string status;
    public functions(){
        Console.WriteLine("Wellcome to the Number Guessing Game: ");
 //       Console.WriteLine("Working");
    }
    public int getNumberFromUser(){
        Console.WriteLine("Enter a number of your desire: {1 to 10}");
        guessNumber = Int32.Parse(Console.ReadLine());
        return guessNumber;
    }
    public int guessNumberGenerate(){
        Random rand = new Random();
        randomNumber = rand.Next(1,10);
        return randomNumber;
    }
    public void playTheGame(){
        int keptUserNumber = 0;
        int keptGuessNumber = 0;
        keptGuessNumber = guessNumberGenerate();
        do{
            keptUserNumber = (getNumberFromUser());
            if(keptGuessNumber == keptUserNumber){
                status = "Congratualtions! The Numbers are correct {0} = {1}";
                } else if(keptUserNumber != keptGuessNumber){
                    status = "Oooooo, No Worry just Try Again!";
                    Console.WriteLine(status);
                    continue;
                    }
                    }
                    while(keptGuessNumber != keptUserNumber);
                    Console.WriteLine(status,keptUserNumber,keptGuessNumber);
                }
                }
                }