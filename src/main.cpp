#include "../versilis/cpu.h"
#include "../versilis/json.h"
#include <iostream>

using namespace std;

int main() {

    // JSON Test
    json *JSON = new json();
    char testCharacters[] = {"testing"};

    cout << 'Bool: ' << JSON->stringify(true) << endl;
    //cout << 'Int: ' << JSON->stringify(2) << endl;
    //cout << 'Double: ' << JSON->stringify(1.5) << endl;
    cout << 'String: ' << JSON->stringify(testCharacters) << endl;

    // CPU Test
    cpu();

    // Return
    return 0;
}