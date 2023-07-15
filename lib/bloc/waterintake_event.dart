import 'package:equatable/equatable.dart';

abstract class WaterIntakeEvents extends Equatable {
  const WaterIntakeEvents();
  @override
  
  List<Object?> get props => [];
}

class OuncesIncrease extends WaterIntakeEvents {}

class OuncesDecrease extends WaterIntakeEvents {}
