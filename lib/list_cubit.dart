import 'package:cubit_exp_378/list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCubit extends Cubit<ListState>{
  
  ListCubit() : super(ListState(mData: []));
  
  /// events
  void addMap(Map<String, dynamic> data){
    List<Map<String,dynamic>> currentStateValue = state.mData;
    currentStateValue.add(data);
    emit(ListState(mData: currentStateValue));
  }

  void updateMap(Map<String, dynamic> updatedData, int index){
    List<Map<String,dynamic>> currentStateValue = state.mData;
    currentStateValue[index] = updatedData;
    emit(ListState(mData: currentStateValue));
  }

  void deleteMap(int index){
    List<Map<String,dynamic>> currentStateValue = state.mData;
    currentStateValue.removeAt(index);
    emit(ListState(mData: currentStateValue));
  }

}