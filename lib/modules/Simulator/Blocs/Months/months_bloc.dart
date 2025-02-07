import 'package:bloc/bloc.dart';
import 'package:demobb/modules/Simulator/Domain/Models/Month.dart';
import 'package:equatable/equatable.dart';

part 'months_event.dart';
part 'months_state.dart';

List<Month> meses = [
  new Month(label: '12', selected: true),
  new Month(label: '24', selected: false),
  new Month(label: '36', selected: false),
];

class MonthsBloc extends Bloc<MonthsEvent, MonthsState> {
  MonthsBloc() : super(MonthsState(meses: meses)) {
    on<OnTapMonth>(_onTapMonth);
  }

  _onTapMonth(OnTapMonth event, Emitter<MonthsState> emit) async {
    print('nuevo estado: ');
    List<Month> nuevaLista = state.meses.map((n) {
       return Month(
      label: n.label,
      selected: n.label == event.mes.label, // Esto ya selecciona correctamente
    );
    }).toList();
    print('nueva lista');
    print(nuevaLista);

    emit(MonthsState(meses: [... nuevaLista]));
  }
}
