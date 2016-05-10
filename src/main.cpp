#include "../versilis/cpu.h"
#include "../versilis/json.h"
#include <iostream>

using namespace std;

int main() {

    // JSON Test
    json *JSON = new json();

    bool boolean = true;
    int integer = 9;
    long double pi = 3.14159265359;
    char characters[] = {"testing"};

    cout << endl;
    cout << "Bool: " << JSON->stringify(boolean) << endl;
    cout << "Int: " << JSON->stringify(integer) << endl;
    cout << "Double: " << JSON->stringify(pi) << endl;
    cout << "String: " << JSON->stringify(characters) << endl;
    cout << endl;

    // CPU Test
    cpu();

    // Return
    return 0;
}