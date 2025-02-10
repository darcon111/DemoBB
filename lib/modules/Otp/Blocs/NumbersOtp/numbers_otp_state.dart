part of 'numbers_otp_bloc.dart';

sealed class NumbersOtpState extends Equatable {
  const NumbersOtpState();
  
  @override
  List<Object> get props => [];
}

final class NumbersOtpInitial extends NumbersOtpState {}
