#include <iostream>
using namespace std;
//시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.


int main()
{
	int num1;

	cin >> num1;

	if (num1 >= 90)
		cout << "A";

	else if (num1 >= 80 && num1 <= 89)
		cout << "B";

	else if (num1 >= 70 && num1 <= 79)
		cout << "C";

	else if (num1 >= 60 && num1 <= 69)
		cout << "D";

	else
		cout << "F";

	return 0;
}