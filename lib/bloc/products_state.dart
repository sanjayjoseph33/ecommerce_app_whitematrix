import 'package:equatable/equatable.dart';

import '../models/Products.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();
  @override
  List<Object> get props => [];
}

final class ProductLoading extends ProductsState {


}
final class ProductLoaded extends ProductsState {
  final List<Products>plist;

  ProductLoaded(this.plist);

  @override
  List<Object> get props => [plist];

}

// ignore: must_be_immutable
final class ProductLoadingError extends ProductsState {
  String ErrorMsg;

  ProductLoadingError(this.ErrorMsg);
  @override
  List<Object> get props => [ErrorMsg];
}
