#include <iostream>
#include <string>

using namespace std;

int main(){
    string Fullname="Rahul Sharma";
    int n = Fullname.find(" ");

    string Firstname = Fullname.substr(0, n);
    string Lastname = Fullname.substr(n+1);
    cout<<"full name  :" << Fullname << endl;
    cout<<"reversed name :" << Lastname << " "<< Firstname;

}
//  I use this same logic in fortran program 
