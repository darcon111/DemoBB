part of 'product_choice_bloc.dart';

sealed class ProductChoiceState extends Equatable {
  const ProductChoiceState();
  
  @override
  List<Object> get props => [];
}

final class ProductChoiceInitial extends ProductChoiceState {}



final class ProductChoiceCharged extends ProductChoiceState {}
