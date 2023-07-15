import 'package:equatable/equatable.dart';

class WaterIntakeState extends Equatable {
  final int ounces;
  const WaterIntakeState({required this.ounces});
  
  @override
  // TODO: implement props
  List<Object?> get props => [ounces];
}

class InitalState extends WaterIntakeState {
 const InitalState():super(ounces: 0);
}

class UpdateWaterIntake extends WaterIntakeState {
  const UpdateWaterIntake(int ounces) : super(ounces: ounces);
}

