part of 'months_bloc.dart';

final class MonthsState extends Equatable {
  final List<Month> meses;
  const MonthsState({required this.meses});

  @override
  List<Object> get props => [meses];
}
