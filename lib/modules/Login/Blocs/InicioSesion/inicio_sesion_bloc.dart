import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'inicio_sesion_event.dart';
part 'inicio_sesion_state.dart';

class InicioSesionBloc extends Bloc<InicioSesionEvent, InicioSesionState> {
  InicioSesionBloc() : super(InicioSesionInitial()) {
    on<InicioSesionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
