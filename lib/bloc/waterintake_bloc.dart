import 'package:drink_tracker/bloc/waterintake_event.dart'; 
import 'package:drink_tracker/bloc/waterintake_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class WaterIntakeBloc extends Bloc<WaterIntakeEvents, WaterIntakeState> {
  WaterIntakeBloc() : super(InitalState());

@override

Stream <WaterIntakeState> mapEventsToState(
  WaterIntakeEvents event,) async* {if (event is OuncesIncrease) {
    yield UpdateWaterIntake(state.ounces + 8);}
    else if(event is OuncesDecrease){
      yield UpdateWaterIntake(state.ounces - 8 < 0 ? 0 :state.ounces - 8 );
    }
  }

  
 
 
  // void onOuncesIncrease(
  //     OuncesIncrease event, Emitter<WaterIntakeStates> emit) async {
  //   waterIntake = waterIntake += 1;
  //   emit(UpdateWaterIntake(waterIntake));
  // }
  // void onOuncesDecrease(
  //     OuncesDecrease event, Emitter<WaterIntakeStates> emit) async {
  //   waterIntake = waterIntake - 1;
  //   emit(UpdateWaterIntake(waterIntake));
  // }
}
