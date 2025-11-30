import 'dart:io';

class Expense {
  String id;
  String category;
  double amount;
  String description;
  DateTime date;

  Expense(
      {required this.id,
      required this.category,
      required this.amount,
      required this.description,
      required this.date});
}

List<Expense> expenses = [];
double monthlyLimit = 3000.0;
double monthlySpent = 0.0;
double balance = 5000.0;

void main() {
  while (true) {
    print("\n===== EXPENSE TRACKER SYSTEM =====");
    print("1) Set Monthly Spending Limit");
    print("2) Add Expense");
    print("3) View All Expenses");
    print("4) View Expense by Category");
    print("5) Delete Expense");
    print("6) View Summary");
    print("0) Exit");
    stdout.write("Select Option: ");

    String? choice = stdin.readLineSync();
    if (choice == null || choice.trim().isEmpty) {
      print("❌ Invalid input. Please try again.");
      continue;
    }

    switch (choice) {
      case "1":
        setLimit();
        break;
      case "2":
        addExpense();
        break;
      case "3":
        viewAll();
        break;
      case "4":
        viewByCategory();
        break;
      case "5":
        deleteExpense();
        break;
      case "6":
        viewSummary();
        break;
      case "0":
        print("👋 Exiting...");
        return;
      default:
        print("❌ Invalid selection!");
    }
  }
}

void setLimit() {
  stdout.write("Enter Monthly Limit (1000 - 100000): ");
  double? limit = double.tryParse(stdin.readLineSync() ?? "");
  if (limit == null || limit < 1000 || limit > 100000) {
    print("❌ Limit should be between 1000 to 100000.");
    return;
  }
  monthlyLimit = limit;
  print("✅ Monthly spending limit updated!");
}

void addExpense() {
  stdout.write("Enter Expense ID (no spaces): ");
  String? id = stdin.readLineSync();
  if (id == null || id.trim().isEmpty || id.contains(" ")) {
    print("❌ Invalid ID!");
    return;
  }

  if (expenses.any((e) => e.id == id)) {
    print("❌ Expense ID already exists.");
    return;
  }

  List<String> categories = ["Food", "Travel", "Shopping", "Bills", "Other"];
  print("\nSelect Category:");
  for (int i = 0; i < categories.length; i++) {
    print("${i + 1}) ${categories[i]}");
  }

  stdout.write("Enter category number: ");
  int? catIndex = int.tryParse(stdin.readLineSync() ?? "");
  if (catIndex == null || catIndex < 1 || catIndex > categories.length) {
    print("❌ Invalid category!");
    return;
  }

  String category = categories[catIndex - 1];

  stdout.write("Enter Amount: ");
  double? amount = double.tryParse(stdin.readLineSync() ?? "");
  if (amount == null || amount <= 0) {
    print("❌ Invalid amount!");
    return;
  }

  if (amount > balance) {
    print("❌ Insufficient balance!");
    return;
  }

  if (monthlySpent + amount > monthlyLimit) {
    print("❌ Monthly limit exceeded!");
    return;
  }

  stdout.write("Enter Description: ");
  String? desc = stdin.readLineSync();
  if (desc == null || desc.trim().isEmpty) {
    print("❌ Description cannot be empty.");
    return;
  }

  DateTime date = DateTime.now();
  expenses.add(Expense(id: id, category: category, amount: amount, description: desc, date: date));
  balance -= amount;
  monthlySpent += amount;

  print("✅ Expense added successfully!");
}

void viewAll() {
  if (expenses.isEmpty) {
    print("📛 No expenses found.");
    return;
  }

  print("\n--- All Expenses ---");
  for (var e in expenses) {
    print("ID: ${e.id}");
    print("Category: ${e.category}");
    print("Amount: Rs ${e.amount}");
    print("Description: ${e.description}");
    print("Date: ${e.date}");
    print("-------------------");
  }
}

void viewByCategory() {
  stdout.write("Enter Category name (Food/Travel/Shopping/Bills/Other): ");
  String? cat = stdin.readLineSync();
  if (cat == null || cat.trim().isEmpty) {
    print("❌ Invalid category input.");
    return;
  }

  var result = expenses.where((e) => e.category.toLowerCase() == cat.toLowerCase()).toList();
  if (result.isEmpty) {
    print("📛 No expense record in this category.");
    return;
  }

  print("\n--- Expenses in $cat ---");
  for (var e in result) {
    print("ID: ${e.id}, Amount: Rs ${e.amount}, Description: ${e.description}, Date: ${e.date}");
  }
}

void deleteExpense() {
  stdout.write("Enter Expense ID to delete: ");
  String? id = stdin.readLineSync();

  var record = expenses.where((e) => e.id == id).toList();
  if (record.isEmpty) {
    print("❌ No expense found with this ID.");
    return;
  }

  double amt = record.first.amount;
  expenses.removeWhere((e) => e.id == id);
  balance += amt;
  monthlySpent -= amt;

  print("✅ Expense deleted & amount refunded!");
}

void viewSummary() {
  print("\n===== EXPENSE SUMMARY =====");
  print("Total Records: ${expenses.length}");
  print("Monthly Limit: Rs $monthlyLimit");
  print("Monthly Spent: Rs $monthlySpent");
  print("Remaining Limit: Rs ${monthlyLimit - monthlySpent}");
  print("Current Balance: Rs $balance");
}