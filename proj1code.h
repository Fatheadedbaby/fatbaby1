#include <iostream>
#include <cmath>
#include <string>
#include <cstdlib>
#include <ctime>
/* I don't really need to include all of these
*  but I want to get myself in the habit of it anyways.*/
using namespace std;

int main() {
    srand(time(0)); /*I use the time as the seed value so it the random
                      function will always give different values when I run the 
                      program.*/
                    
    //These are all the variables I will use in the rest of the program.                
    char randomLetter;
    const char guessedLetter = (rand() % 26) + 65;/*This is the random letter that ends up being chosen by
                                                    the user. */
                                                    
    int num1 = 99;  //This is the starting point for the numbers.
    
    int numberOfRows = 0; /*This is the variable to determines how 
                            many rows of 10 numbers and letters there will be.*/  
                            
    int numsInRow = 0; /*This is the variable that determines how many
                     numbers and letters are in each row.*/
    
    
    cout << "Program #1: Guess It" << endl;
    cout << "Author: Nicholas Bezinovich" << endl;
    cout << "Lab: Tuesday 12pm" << endl;
    cout << "Date: September 2, 2017" << endl;
    cout << "System: C++ in Cloud 9" << endl;
    cout << endl;
    
    /*This initial while loop will repeat 10 times 
      so that 10 rows of numbers can be created.*/
    while (numberOfRows < 10) {
        
        /*This second while loop allows 10 numbers and letters to be created in
          each row that is created.*/
        while (numsInRow < 10) {
            
            /*This if else statement will place the number I guess into the possible 
              places that the user may end up, and otherwise will put a random uppercase letter
              with all odd numbers and a random lowercase letter with all the even numbers.*/
            if (num1 == 90 || num1 == 81 || num1 == 72 || num1 == 63 || num1 == 54 || num1 == 45 || num1 == 36 || num1 == 27 || num1 == 18 || num1 == 9 || num1 == 0) {
                randomLetter = guessedLetter;
            }    
                else if (num1 % 2 == 1) {
                    randomLetter = (rand() % 26) + 65;
                } 
                    else {
                        randomLetter = (rand() % 26) + 97;
                    }
            
            
            //This if else statement is used so that every row lines up neatly.
            if (numberOfRows < 9) {
                cout << num1 << ":" << randomLetter << " "; 
            }
                else {
                    cout << " " << num1 << ":" << randomLetter << " ";    
                }
    
            num1 = num1 - 1; //subtracts one from the number so that it counts down when the loop is repeated. 
            numsInRow = numsInRow + 1; //Adds one to the variable so when the loop repeats it will eventually stop.   
        }
        cout << endl; //Ends the line so that the next row can start on the line below.
        numberOfRows = numberOfRows + 1; //Adds one to variable so that when the loop repeats it will eventually stop.  
        numsInRow = 0; //This resets the variable to zero so the second while loop can start fresh when this loop is repeated.

    } 
    cout << endl;
    
    //Below are the instructions that the user is suppose to follow.
    cout << "1. Choose any two-digit number in the table above (e.g. 73)." << endl; 
    cout << "2. Subtract it's two digits from itself (e.g. 73 - 7 -3 = 63)." << endl;
    cout << "3. Find this new number (e.g. 63) and remember the letter next to it." << endl;
    cout << "4. Now press the return key and I'll read your mind..." << endl;
    
    cin.ignore(); //This allows the user to press return without typing anything in and have the program continue.
    
    //Finally this displays the letter that the user ended up on.
    cout << "You selected the character: " << guessedLetter << endl;

        
}