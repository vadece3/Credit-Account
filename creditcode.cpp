#include "creditcode.h"
#include <QMessageBox>
#include <QIntValidator>

Creditcode::Creditcode(QObject *parent) : QObject(parent)
{

}
Creditcode::~Creditcode(){

}


static int FCFACount=0;

void Creditcode::valueincrement(int s){
    valueChanged(s);
}




void Creditcode::increment(int x){
    if(!x){
        printf ("enter a number");
     }
    else{
        FCFACount+= x;
        valueincrement(FCFACount);
        }

}



//test function
void Creditcode::print1(int z){
    if(z==1){
    print("helo");
    }
}
