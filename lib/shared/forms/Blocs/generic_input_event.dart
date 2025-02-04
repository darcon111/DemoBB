part of 'generic_input_bloc.dart';


abstract class GenericInputEvent extends Equatable {
  const GenericInputEvent();

  @override
  List<Object> get props => [];
}

class Showed extends GenericInputEvent {
  const Showed();
  @override
  List<Object> get props => [];
}
