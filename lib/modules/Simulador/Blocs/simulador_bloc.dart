import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'simulador_event.dart';

class SimuladorBloc extends Bloc<SimuladorEvent, bool> {
  SimuladorBloc() : super(false) {
    on<Showed>(_onShow);
  }

  _onShow(Showed event, Emitter<bool> emit) async {
    print('nuevo estado: ' );
    print(state);
    emit(!state);
  }
}
