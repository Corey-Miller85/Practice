#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int height;
    int row;
    int col;
    int space;
    int mid;
    
    //asks the user for a height. 1 - 8  
    {
        do
        {
            height = get_int("Height of blocks?: ");
        }
        while (height < 0 || height > 8);
    }

    //prints rows 
    for (row = 0; row < height; row++)
    {
        //prints spaces
        for (space = 0; space < height - 1 - row; space++)
        {
            printf(" ");
        }

        //Prints Colums 
        for (col = 0; col < row + 1; col++)
        {
            printf("#");
        }
        
        printf("\n");
    }
}

