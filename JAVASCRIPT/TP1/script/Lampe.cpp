#include <iostream>
#include "Lampe.h"

void Lampe::allumer(){
	this->estAllumee=true;
	std::cout<<"Lampe allumée"<<std::endl;
}

void Lampe::eteindre()
{
	this->estAllumee=false;
	std::cout<<"Lampe eteinte"<<std::endl;
}