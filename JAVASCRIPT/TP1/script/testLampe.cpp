#include <iostream>
using namespace std;
#include "Lampe.h"

int main (){
    Lampe L1;
    L1.allumer();

    Lampe* L2 = new Lampe ();
    L2->eteindre();
    delete L2;
    return 0;
}