part of 'simulator_bloc.dart';

abstract class SimulatorEvent extends Equatable {
  const SimulatorEvent();

  @override
  List<Object> get props => [];
}

class Showed extends SimulatorEvent {
  const Showed();
  @override
  List<Object> get props => [];
}
