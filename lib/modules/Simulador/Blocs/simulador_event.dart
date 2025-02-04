part of 'simulador_bloc.dart';

abstract class SimuladorEvent extends Equatable {
  const SimuladorEvent();

  @override
  List<Object> get props => [];
}

class Showed extends SimuladorEvent {
  const Showed();
  @override
  List<Object> get props => [];
}
