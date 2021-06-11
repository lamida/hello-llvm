#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void b1()
{
    int x = 10;
    if (x == 10) {
        printf("b1 is called in first branch\n");
    } else {
        printf("b1 is called in second branch\n");
    }
}

void b2()
{
    printf("b2 is called\n");
}

void c()
{
    printf("c is called\n");
}

void e()
{
    printf("e is called\n");
}

void d()
{
    printf("d is called\n");
    e();
}

void f()
{
    printf("f is called\n");
}

void g1()
{
    printf("g1 is called\n");
}

void g2()
{
    printf("g2 is called\n");
}

void g3()
{
    printf("g3 is called\n");
}

void g4()
{
    printf("g4 is called\n");
}

void switchDeterministic()
{
    int r = 4;
    switch (r)
    {
        case 1:
            g1();
            break;
        case 2:
            g2();
            break;
        case 3:
            g3();
            break;
        case 4:
            g4();
            break;
        default:
            printf("nothing here");
    };
}

void switchNonDeterministic()
{
    // Random will prevent the method from being inlined
    time_t t;
    srand((unsigned)time(&t));
    int r = 1 + rand() % 4;
    switch (r)
    {
        case 1:
            g1();
            break;
        case 2:
            g2();
            break;
        case 3:
            g3();
            break;
        case 4:
            g4();
            break;
        default:
            printf("nothing here");
    };
}

int main()
{
    int a = 1;
    if (a == 1)
    {
        b1();
    }
    else
    {
        b2();
    }
    c();
    d();

    int z = 10;
    while (z > 0)
    {
        f();
        z--;
    }

    switchDeterministic();
    switchNonDeterministic(); // this will not be inlined
}
