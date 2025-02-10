import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'numbers_otp_event.dart';
part 'numbers_otp_state.dart';

class NumbersOtpBloc extends Bloc<NumbersOtpEvent, NumbersOtpState> {
  NumbersOtpBloc() : super(NumbersOtpInitial()) {
    on<NumbersOtpEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
