import 'package:expense_repository/expense_repository.dart';
import 'package:expenses_tracker/screens/home/blocs/get_expenses_bloc/get_expenses_bloc.dart';
import 'package:expenses_tracker/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TrošakTrack",
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              background: Colors.grey.shade100,
              onBackground: Colors.black,
              primary: const Color.fromARGB(255, 5, 193, 250),
              secondary: const Color.fromARGB(255, 0, 175, 53),
              tertiary: const Color.fromARGB(255, 204, 240, 2),
              outline: Colors.grey)),
      home: BlocProvider(
        create: (context) =>
            GetExpensesBloc(FirebaseExpenseRepo())..add(GetExpenses()),
        child: const HomeScreen(),
      ),
    );
  }
}


