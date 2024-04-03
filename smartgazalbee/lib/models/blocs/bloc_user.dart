import 'package:flutter_bloc/flutter_bloc.dart';

class User{
  String name;
  String address;
  User(this.name, this.address);
}

abstract class UserEvent{
  User user;
  UserEvent(this.user);
}

class CreateUserEvent extends UserEvent{
  CreateUserEvent(User user) : super(user);
}

class UpdateUserEvent extends UserEvent{
  UpdateUserEvent(User user) : super(user);
}

class UserBloc extends Bloc<UserEvent, User?>{
  UserBloc(): super(null){
    on<CreateUserEvent>((event, emit){
      emit(event.user);
    });
    on<UpdateUserEvent>((event, emit){
      emit(event.user);
    });
  }
}
