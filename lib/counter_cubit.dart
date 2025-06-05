import 'package:cubit_exp_378/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{

  CounterCubit() : super(CounterState(counter: 0));

  /// events
  incrementCount(){
    emit(CounterState(counter: state.counter+1));
  }

  decrementCount(){
    if(state.counter>0){
      emit(CounterState(counter: state.counter-1));
    }
  }

}