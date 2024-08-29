void main() {

  // Checking for string if it's a palindrome

  // checking for punctuation, spaces using regex and making case sensitive, I'll choose uppercase
  bool isPalindrome(String input) {
    String stringToBeChecked =
        input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toUpperCase();

    // checking if the stringToChecked == it's reverse and returning it
    return stringToBeChecked == stringToBeChecked.split('').reversed.join('');
  }

  // isPalindromeExtended function to handle both string and numeric inputs
  bool isPalindromeExtended(dynamic input) {

    // Convert numeric input to a string
    String strInput = input.toString();

    return isPalindrome(strInput);
  }

  // Test
  var testPalindrome = isPalindromeExtended("123abccba321");
  print(testPalindrome);

}
