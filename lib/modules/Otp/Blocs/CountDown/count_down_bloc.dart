import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'count_down_event.dart';
part 'count_down_state.dart';

class CountDownBloc extends Bloc<CountDownEvent, CountDownState> {
  CountDownBloc() : super(CountDownState(contador: 300)) {
    on<SecondMinus>(_onCountDownEvent);
    
  }

  _onCountDownEvent(SecondMinus event, Emitter<CountDownState> emit) {
    emit(CountDownState(contador:  - 1));
  }
}