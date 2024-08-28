double basicCalculator(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        throw ArgumentError('ZeroDivisionError');
      }
      return num1 / num2;
    case '%':
      if (num2 == 0) {
        throw ArgumentError('ZeroDivisionError');
      }
      return num1 % num2;
    default:
      throw ArgumentError('No such operator');
  }
}

// To implement the basic calculate it's possible to conditional statements like if, if else and else together with error handling like try and catch to build the program for this have used switch


double extendedCalculator(List<dynamic> operations) {
  if (operations.length % 2 == 0) {
    throw ArgumentError("Invalid argument(s): ");
  }

  double result = operations[0];
  
  for (int i = 1; i < operations.length; i += 2) {
    String operator = operations[i];
    double num = operations[i + 1];

    result = basicCalculator(result, num, operator);
  }

  return result;
}

void main() {
  // Basic operations
  print(basicCalculator(10, 5, '+'));
  print(basicCalculator(10, 5, '-'));
  print(basicCalculator(10, 5, '*'));
  print(basicCalculator(10, 5, '/')); 
  print(basicCalculator(10, 5, '%'));
  
  // Division by zero test
  try {
    print(basicCalculator(10, 0, '/'));
  } catch (e) {
    print(e);
  }

  // Multi-step operation
  List<dynamic> operations = [10.0, '+', 5.0, '*', 3.0, '-', 2.0];
  print(extendedCalculator(operations));
}