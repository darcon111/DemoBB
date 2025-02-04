part of 'generic_input_bloc.dart';

sealed class GenericInputState extends Equatable {
  const GenericInputState();
  
  @override
  List<Object> get props => [];
}

final class GenericInputInitial extends GenericInputState {}
