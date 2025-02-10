import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_choice_event.dart';
part 'product_choice_state.dart';

class ProductChoiceBloc extends Bloc<ProductChoiceEvent, ProductChoiceState> {
  ProductChoiceBloc() : super(ProductChoiceInitial()) {
    on<ProductChoiceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
