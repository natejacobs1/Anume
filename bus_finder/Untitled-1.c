#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Function declarations
void displayRules();
int computerMove(int currentSum);
void displayGameState(int currentSum, int isUserTurn);
int isValidMove(int number);

int main() {
    int currentSum = 0;
    int userNumber;
    int isUserTurn = 1; // 1 for user's turn, 0 for computer's turn
    char playAgain = 'y';

    // Seed the random number generator
    srand(time(NULL));

    while (playAgain == 'y' || playAgain == 'Y') {
        // Reset game
        currentSum = 0;
        isUserTurn = 1;

        // Display rules at start
        displayRules();

        // Game loop
        while (currentSum < 100) {
            displayGameState(currentSum, isUserTurn);

            if (isUserTurn) {
                // User's turn
                printf("\nEnter your number (1-10): ");
                scanf("%d", &userNumber);

                // Validate user input
                if (!isValidMove(userNumber)) {
                    printf("\nInvalid move! Please enter a number between 1 and 10.\n");
                    continue;
                }

                currentSum += userNumber;
                printf("You added %d. ", userNumber);

                // Check if user won
                if (currentSum >= 100) {
                    printf("\n🎉 Congratulations! You won! The sum is %d\n", currentSum);
                    break;
                }

                isUserTurn = 0; // Switch to computer's turn
            } else {
                // Computer's turn
                int computerNumber = computerMove(currentSum);
                currentSum += computerNumber;
                printf("\nComputer added %d. ", computerNumber);

                // Check if computer won
                if (currentSum >= 100) {
                    printf("\n🤖 Computer wins! The sum is %d\n", currentSum);
                    break;
                }

                isUserTurn = 1; // Switch to user's turn
            }

            printf("Current sum is: %d\n", currentSum);
        }

        // Ask to play again
        printf("\nWould you like to play again? (y/n): ");
        scanf(" %c", &playAgain);
    }

    printf("\nThanks for playing! Goodbye!\n");
    return 0;
}

// Function to display game rules
void displayRules() {
    printf("\n=== NUMBER GAME RULES ===\n");
    printf("1. Players take turns adding numbers (1-10)\n");
    printf("2. First player to reach or exceed 100 wins\n");
    printf("3. If you start with 1, you can win!\n");
    printf("========================\n\n");
}

// Function to validate moves
int isValidMove(int number) {
    return (number >= 1 && number <= 10);
}

// Function to display current game state
void displayGameState(int currentSum, int isUserTurn) {
    printf("\n-----------------\n");
    printf("Current sum: %d\n", currentSum);
    printf("Turn: %s\n", isUserTurn ? "YOUR TURN" : "COMPUTER'S TURN");
    printf("-----------------\n");
}

// Function for computer's move
int computerMove(int currentSum) {
    // Winning numbers strategy
    int winningNumbers[] = {89, 78, 67, 56, 45, 34, 23, 12, 1};
    int targetSum = 0;
    int i;

    // Find next target number
    for (i = 0; i < 9; i++) {
        if (currentSum < winningNumbers[i]) {
            targetSum = winningNumbers[i];
            break;
        }
    }

    if (targetSum > currentSum) {
        int move = targetSum - currentSum;
        if (move >= 1 && move <= 10) {
            return move;
        }
    }

    // If no strategic move available, make a random move
    return (rand() % 10) + 1;
}