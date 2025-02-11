import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_choice_event.dart';
part 'product_choice_state.dart';

class ProductChoiceBloc extends Bloc<ProductChoiceEvent, ProductChoiceState> {
  ProductChoiceBloc() : super(ProductChoiceInitial()) {
    on<Showed>(_onLoadProducts);
  }
  Future<void> _onLoadProducts(
      Showed event, Emitter<ProductChoiceState> emit) async {
    await Future.delayed(Duration(seconds: 3));
    emit(ProductChoiceCharged());
  }
}
