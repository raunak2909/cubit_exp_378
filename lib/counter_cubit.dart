import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{

  CounterCubit() : super(0);

  /// events
  incrementCount(){
    emit(state+1);
  }

  decrementCount(){
    if(state>0){
      emit(state-1);
    }
  }

}