#include <iostream>

using namespace std;
int countDiv(int n, int d) {
    if (d == 0) {
        return 0;
    }
    
    if (n % d == 0) {
        return 1 + countDiv(n, d - 1);
    } else {
        return countDiv(n, d - 1);
    }
}
bool isThree(int n) {
    return countDiv(n, n) == 3;
}

int main() {
    int n;
    cin >> n;
    cout << boolalpha << isThree(n) << endl;
    
    return 0;
}
