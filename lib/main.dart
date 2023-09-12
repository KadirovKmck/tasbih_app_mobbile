import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbih_app_mobbile/app/bloc/bloc/tasbih_bloc.dart';
import 'package:tasbih_app_mobbile/app/views/home%20view/home_views.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => TasbihBloc(),
        child: HomeViews(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
