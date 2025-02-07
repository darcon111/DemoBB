part of 'months_bloc.dart';

sealed class MonthsEvent extends Equatable {
  const MonthsEvent();

  @override
  List<Object> get props => [];
}

class OnTapMonth extends MonthsEvent {
  final Month mes;
  const OnTapMonth({required this.mes});
  @override
  List<Object> get props => [mes];
}
