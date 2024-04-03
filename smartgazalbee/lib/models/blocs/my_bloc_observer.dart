import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/blocs/counter_event.dart';


class MyBlocObserver extends BlocObserver{
  @override
  void onEvent(Bloc bloc, Object? event){
    super.onEvent(bloc, event);
    print("observer onEvent...${bloc.state}.");
  }

  @override
  void onTransition(Bloc bloc, Transition transition){
    super.onTransition(bloc, transition);
    print("observer onTransition...${transition}.");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace){
   super.onError(bloc, error, stackTrace);
   print("observer onError....");
  }

  @override
  void onChange(BlocBase bloc, Change change){
    super.onChange(bloc, change);
    print("observer onChange.... ${change.currentState}, ${change.nextState}");
  }
}

void main(){
  BlocOverrides.runZoned(() => runApp(BlocApp()),blocObserver: MyBlocObserver());
}

