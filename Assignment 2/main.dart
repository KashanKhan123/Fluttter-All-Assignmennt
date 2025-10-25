void main() {
  // 1: Student Pass/Fail Check
  int marks = 55;
  int attendance = 80;

  if (marks > 40 && attendance >= 75) {
    print("Student Passed");
  } else if (marks <= 40 && attendance >= 75) {
    print("Failed due to low marks");
  } else if (marks > 40 && attendance < 75) {
    print("Failed due to low attendance");
  } else {
    print("Completely Failed");
  }

  // 2: Checking Conditions
  int a = 35;
  int b = 60;

  bool condition1 = a < 50 && a < b;
  bool condition2 = a < 50 || a < b;

  if (condition1) {
    print("Both conditions are true");
  } else {
    print("Both conditions are not true");
  }

  if (condition2) {
    print("At least one condition is true");
  } else {
    print("No condition is true");
  }

  // 3: Student Result
  String name = "Robert";
  int sub1 = 78;
  int sub2 = 45;
  int sub3 = 62;

  int total = sub1 + sub2 + sub3;
  double percentage = total / 3;

  print("Name: $name");
  print("Subjects: $sub1, $sub2, $sub3");
  print("Total Marks: $total");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");

  if (percentage >= 80) {
    print("Remarks: Excellent");
  } else if (percentage >= 60) {
    print("Remarks: Good");
  } else {
    print("Remarks: Needs Improvement");
  }

  // 4: Grade Calculation
  int studentMarks = 88;
  String grade;

  if (studentMarks >= 90) {
    grade = "A+";
  } else if (studentMarks >= 80) {
    grade = "A";
  } else if (studentMarks >= 70) {
    grade = "B";
  } else if (studentMarks >= 60) {
    grade = "C";
  } else if (studentMarks >= 50) {
    grade = "D";
  } else {
    grade = "Fail";
  }

  print("Grade: $grade");

  // 5: Marksheet of 4 Subjects
  int s1 = 80, s2 = 70, s3 = 85, s4 = 75;
  int totalMarks = s1 + s2 + s3 + s4;
  double percent = totalMarks / 4;

  print("Marks: $s1, $s2, $s3, $s4");
  print("Total: $totalMarks");
  print("Percentage: ${percent.toStringAsFixed(2)}%");

  if (percent >= 60) {
    print("Division: First");
  } else if (percent >= 45) {
    print("Division: Second");
  } else {
    print("Division: Third");
  }

  // 6: Age Comparison
  int age1 = 23;
  int age2 = 28;

  if (age1 == age2) {
    print("Both are of same age");
  } else {
    String older = age1 > age2 ? "Person 1" : "Person 2";
    print("$older is Older");
  }

  // 7: Positive, Negative, or Zero
  int num1 = -10;

  if (num1 > 0) {
    print("Positive Number");
  } else if (num1 < 0) {
    print("Negative Number");
  } else {
    print("Number is Zero");
  }

  // 8: Square or Rectangle
  int length = 10;
  int width = 15;

  String shape = (length == width) ? "Square" : "Rectangle";
  print("Shape: $shape");

  // 9: Temperature Condition
  num temp = 42;

  if (temp < 0) {
    print("Freezing Weather");
  } else if (temp < 10) {
    print("Very Cold Weather");
  } else if (temp < 20) {
    print("Cold Weather");
  } else if (temp < 30) {
    print("Normal Temperature");
  } else if (temp < 40) {
    print("It’s Hot");
  } else {
    print("It’s Very Hot");
  }
}
