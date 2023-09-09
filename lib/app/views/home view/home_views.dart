import 'package:flutter/material.dart';
import 'package:tasbih_app_mobbile/app/widgets/animetions/animetions.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  _HomeViewsState createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 300,
      width: 300,
      color: Colors.amber,
      child: Animetions(),
    ));
  }
}
