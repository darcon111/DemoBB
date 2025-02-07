import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'simulator_event.dart';

class SimulatorBloc extends Bloc<SimulatorEvent, bool> {
  SimulatorBloc() : super(false) {
    on<Showed>(_onShow);
  }

  _onShow(Showed event, Emitter<bool> emit) async {
    print('nuevo estado: ' );
    print(state);
    emit(!state);
  }
}
