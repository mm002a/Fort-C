#include <stdio.h>
#include <math.h>

float A, pie;
 float func(float X);
int main() {
   /* my first program in C */
   A = 1.5;
   printf("Hello, World!- A: %E\n",A);
   pie = func(A);
   printf("pie: %E \n",pie);
   pie = 4.0*atan(1.0);
   printf("pi: %E \n",pie);
   return 0;
}
float func(float B)
             {
   float C;

   printf("B: %E \n", B);
   C = 1.2*B;
   return C;
}
