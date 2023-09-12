import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbih_app_mobbile/app/bloc/bloc/tasbih_bloc.dart';
import 'package:tasbih_app_mobbile/app/widgets/animetions/animetions.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  _HomeViewsState createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocBuilder<TasbihBloc, TasbihState>(
            builder: (context, state) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/tasbeeh.png'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 85,
                          width: 2,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.white),
                          child: Text(
                            state.countBloc.toString(),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Animetions(),
                    ]),
              );
            },
          )),
    );
  }
}
