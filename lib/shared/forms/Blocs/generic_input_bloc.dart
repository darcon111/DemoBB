import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'generic_input_event.dart';
part 'generic_input_state.dart';

class GenericInputBloc extends Bloc<GenericInputEvent, bool> {
  GenericInputBloc() : super(false) {
    on<Showed>(_onShow);
  }

  _onShow(Showed event, Emitter<bool> emit) async {
    print('nuevo estado: ');
    print(state);
    emit(!state);
  }
}
