import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/cubit/app_states.dart';
import 'package:movies_app/movies_module/presentation/screens/movies_screen.dart';
import 'package:movies_app/tvs_module/presentation/screens/main_tv_screem.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  List<Widget> screens =const [
    MainMoviesScreen(),
    MainTvScreen(),
  ];
  List<BottomNavigationBarItem> navItems = const [
    BottomNavigationBarItem(

        label: "",
        icon: Icon(Icons.movie_filter_sharp,),),
    BottomNavigationBarItem(
      label: "",
      icon: Icon(Icons.tv),
    ),
  ];
  int currentIndex = 0;
  void changeBottomNavState(int index) {
    currentIndex = index;
    emit(AppBottomNavBarState());
  }
}
