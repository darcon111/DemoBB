part of 'count_down_bloc.dart';

final class CountDownState extends Equatable {
  final int contador;
  const CountDownState({required this.contador});
  
  @override
  List<Object> get props => [contador];
}
