import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit/bottom_nav_cubit/bottom_nav_cubit.dart';
import '../widget/bottom_nav_bar.dart';
import '../widget/body_content.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: Scaffold(
        body: const BodyContent(),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}