import 'package:drink_tracker/bloc/waterintake_event.dart';
import 'package:drink_tracker/bloc/waterintake_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WaterIntakeBloc extends Bloc<WaterIntakeEvents, WaterIntakeStates> {
  int waterIntake = 0;
  WaterIntakeBloc() : super(InitalState()) {
on <OuncesIncrease> (onOuncesIncrease)

  }
 
 
  void onOuncesIncrease(
      OuncesIncrease event, Emitter<WaterIntakeStates> emit) async {
    waterIntake = waterIntake + 1;
    emit(UpdateWaterIntake(waterIntake));
  }
  void onOuncesDecrease(
      OuncesIncrease event, Emitter<WaterIntakeStates> emit) async {
    waterIntake = waterIntake - 1;
    emit(UpdateWaterIntake(waterIntake));
  }
}
