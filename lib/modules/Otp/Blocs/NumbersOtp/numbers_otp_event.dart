part of 'numbers_otp_bloc.dart';

sealed class NumbersOtpEvent extends Equatable {
  const NumbersOtpEvent();

  @override
  List<Object> get props => [];
}


class OnKeyEvent extends NumbersOtpEvent {
  const OnKeyEvent();
  @override
  List<Object> get props => [];
}
