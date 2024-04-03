import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartgazalbee/models/blocs/bloc_user.dart';



abstract class CounterEvent{
  int no;
  CounterEvent(this.no);
}
class IncrementEvent extends CounterEvent{
  IncrementEvent(int no): super(no);
}
class DecrementEvent extends CounterEvent{
  DecrementEvent(int no): super(no);
}

class BlocCounter extends Bloc<CounterEvent, int>{
  BlocCounter(): super(0) {
    on<IncrementEvent>((event, emit){
      print("bloc state change before....");
      emit(state + event.no);
      print("bloc state change after....");
    });
    on<DecrementEvent>((event, emit){
      emit(state - event.no);
    });
    @override
    void onEvent(CounterEvent event){
    super.onEvent(event);
    }
    @override
    void onTransition(Transition<CounterEvent, int> transition){
      super.onTransition(transition);
      print("transition...$transition");
    }

    @override
    void onError(Object error, StackTrace stackTrace){
      super.onError(error, stackTrace);
    }
  }
}
void main() => runApp(BlocApp());

class BlocApp extends StatelessWidget {
  const BlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BlocObserver, BlocListener"),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider<BlocCounter>(
            create: (BuildContext context) => BlocCounter(),
            ),
            BlocProvider<UserBloc>(
              create: (BuildContext context) => UserBloc(),
            ),
          ],
          child: MyWidget(),
        )
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BlocCounter counterBloc = BlocProvider.of<BlocCounter>(context);
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);

    return MultiBlocListener(
      listeners:[
        BlocListener<BlocCounter,int>(
          listenWhen: (previous, current){
            return true;
          },
          listener: (context, state){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("$state"),
              backgroundColor: Colors.red,
              ),
            );
          },
        ),
        BlocListener<UserBloc, User?>(listener: (context,user){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:Text("${user!.name}"),
                backgroundColor: Colors.blue,
            ),
          );
        })
      ],
    child: Container(
      color: Colors.deepOrange,
      child: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
            children: [
              BlocBuilder<BlocCounter, int>(
                buildWhen: (previous, current){
                  return true;
                    },
                    builder: (context, count){
                      return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("${counterBloc.state}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Bloc: $count",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(child: Text("increment"),onPressed:(){
                          counterBloc.add(IncrementEvent(2));
                        },
                      ),
                        ElevatedButton(child: Text("decrement"),onPressed: (){
                          counterBloc.add(DecrementEvent(2));
                        }
                      ),
                    ],
                  );
                },
              ),
              BlocBuilder<UserBloc, User?>(
                  builder: (context, user){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("user ${user?.name}, ${user?.address}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(onPressed: (){
                          userBloc.add(CreateUserEvent(User("kkang","seoul")));
                        }, child: Text("create")),
                        ElevatedButton(onPressed: (){
                          userBloc.add(UpdateUserEvent(User("Kim", "busan")));
                        }, child: Text("update"))
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
     );
  }
}