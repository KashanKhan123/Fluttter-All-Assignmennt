void main() {
  // Q1: Remove duplicate elements from a list
  List<String> names = ['Ali', 'Sara', 'Ali', 'Zain', 'Sara'];
  List<String> newList = [];
  for (var n in names) {
    if (!newList.contains(n)) {
      newList.add(n);
    }
  }
  print("Q1 -> New List without duplicates: $newList");

  // Q2: Print first n elements from list
  List<int> numbers = [10, 20, 30, 40, 50];
  int n = 3;
  List<int> firstN = numbers.take(n).toList();
  print("Q2 -> First $n elements: $firstN");

  // Q3: Reverse a list (original unchanged)
  List<String> fruits = ['Apple', 'Banana', 'Mango', 'Orange'];
  List<String> reversed = fruits.reversed.toList();
  print("Q3 -> Reversed list: $reversed");

  // Q4: Unique integers from list
  List<int> nums = [1, 2, 2, 3, 4, 4, 5];
  List<int> unique = [];
  for (var x in nums) {
    if (!unique.contains(x)) {
      unique.add(x);
    }
  }
  print("Q4 -> Unique integers: $unique");

  // Q5: Sort a list in ascending order
  List<int> values = [50, 10, 30, 20, 40];
  List<int> sorted = List.from(values);
  sorted.sort();
  print("Q5 -> Sorted list: $sorted");

  // Q6: Filter out negative numbers
  List<int> mixNums = [-2, 5, -8, 10, 3, -1];
  List<int> positive = mixNums.where((e) => e >= 0).toList();
  print("Q6 -> Positive numbers: $positive");

  // Q7: Filter out odd numbers (only even remain)
  List<int> allNums = [1, 2, 3, 4, 5, 6];
  List<int> even = allNums.where((e) => e % 2 == 0).toList();
  print("Q7 -> Even numbers: $even");

  // Q8: Using map() to square each value
  List<int> squares = [2, 4, 6, 8];
  List<int> result = squares.map((e) => e * e).toList();
  print("Q8 -> Squared values: $result");

  // OR version of Q8 (person map)
  Map<String, dynamic> person = {
    "name": "John",
    "age": 25,
    "isStudent": true
  };
  if (person["isStudent"] == true && person["age"] > 18) {
    print("Q8 (Map version) -> Eligible");
  } else {
    print("Q8 (Map version) -> Not eligible");
  }

  // Q9: Product map stock check
  Map<String, dynamic> product = {
    "name": "Shampoo",
    "price": 200,
    "quantity": 5
  };
  if (product["quantity"] > 0) {
    print("Q9 -> In stock");
  } else {
    print("Q9 -> Out of stock");
  }

  // Q10: Car map check
  Map<String, dynamic> car = {
    "brand": "Toyota",
    "color": "Red",
    "isSedan": true
  };
  if (car["isSedan"] == true && car["color"] == "Red") {
    print("Q10 -> Match");
  } else {
    print("Q10 -> No match");
  }

  // Q11: User admin check
  Map<String, dynamic> user = {
    "name": "Ali",
    "isAdmin": true,
    "isActive": true
  };
  if (user["isAdmin"] == true && user["isActive"] == true) {
    print("Q11 -> Active admin");
  } else {
    print("Q11 -> Not an active admin");
  }

  // Q12: Shopping cart map check
  Map<String, int> cart = {
    "Apple": 3,
    "Banana": 2,
    "Mango": 5
  };
  if (cart.containsKey("Apple")) {
    print("Q12 -> Product found");
  } else {
    print("Q12 -> Product not found");
  }

  // Q13: Difference between = and ==
  print("\nQ13 -> '=' is assignment operator, used to assign value.");
  print("       '==' is comparison operator, used to check equality.");
  print("Example: a = 5 assigns value 5, while a == 5 checks equality.");

  // Q14: What happens if we do 5++?
  print("\nQ14 -> Error! Constants like 5 cannot be incremented.");

  // Q15: Is a = a + 1 same as a++ ?
  int a = 5;
  a = a + 1; // or a++;
  print("\nQ15 -> Both increase the value by 1,");
  print("       but a++ returns old value before increment.");
  print("       Example: int x = a++; increases after assignment.");

  // 10 List & Map methods examples
  print("\nExtra -> 10 Useful List & Map Methods:");

  List<int> demoList = [3, 6, 9, 12, 15];
  Map<String, dynamic> demoMap = {"name": "Ali", "age": 20, "city": "Karachi"};

  print("1. add(): ${demoList..add(18)}");
  print("2. remove(): ${demoList..remove(9)}");
  print("3. length: ${demoList.length}");
  print("4. contains(): ${demoList.contains(12)}");
  print("5. indexOf(): ${demoList.indexOf(6)}");
  print("6. clear(): ${List.from(demoList)..clear()}");
  print("7. keys: ${demoMap.keys}");
  print("8. values: ${demoMap.values}");
  print("9. putIfAbsent(): ${demoMap..putIfAbsent('country', () => 'Pakistan')}");
  print("10. update(): ${demoMap..update('age', (value) => value + 1)}");
}
