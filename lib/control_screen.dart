import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/cubit/app_cubit.dart';
import 'package:movies_app/core/cubit/app_states.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            body:cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.grey,
              items:cubit.navItems,
              onTap:(int index){
                cubit.changeBottomNavState(index);
              },
              currentIndex:cubit.currentIndex,


            ),
          );
        },
      ),
    );
  }
}
