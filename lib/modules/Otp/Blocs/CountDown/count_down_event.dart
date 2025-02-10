part of 'count_down_bloc.dart';

sealed class CountDownEvent extends Equatable {
  const CountDownEvent();

  @override
  List<Object> get props => [];
}


class SecondMinus extends CountDownEvent {
  const SecondMinus();
  @override
  List<Object> get props => [];
}
