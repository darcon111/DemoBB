part of 'product_choice_bloc.dart';

sealed class ProductChoiceEvent extends Equatable {
  const ProductChoiceEvent();

  @override
  List<Object> get props => [];
}



class Showed extends ProductChoiceEvent {
  const Showed();
  @override
  List<Object> get props => [];
}
