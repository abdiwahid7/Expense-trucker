import 'package:my_expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:my_expense_tracker/widgets/new_expenses.dart';
import 'package:flutter/material.dart';
import 'package:my_expense_tracker/models/expenses.dart';
//import 'package:uuid/uuid.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
        Expense(
        title: 'Cinema',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.leisure),
        Expense(
        title: 'Eatery',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.food),
        Expense(
        title: 'Picnic',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.travel),
  ];


  void _openAddExpenseOverlay (){

    //NewExpense(); is imported from new_expense.dart
    //showModalBottomSheet is a built in function that shows a bottom sheet

    showModalBottomSheet(context: context, builder: (ctx) => const NewExpense() );




  }

  @override
  Widget build(context) {
    return  Scaffold(

      appBar:  AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),

          
          )


        ],

      ),
      body: Column(
        children: [
          const  Text('The Chart'),
         Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}