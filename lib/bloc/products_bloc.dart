import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/apiservice.dart';
import 'products_event.dart';
import 'products_state.dart';

class ProductsBloc extends Bloc<ProductsLoadedEvent, ProductsState> {
  ProductsBloc() : super(ProductLoading()) {
    on<ProductsLoadedEvent>((event, emit) async {
      emit(ProductLoading());
      Apiservice apiservice=Apiservice();
      try
      {
        var plist=await apiservice.fetchdata();
        emit(ProductLoaded(plist!));
      }catch(e)
      {
        emit(ProductLoadingError("$e"));
      }
    });
  }
}
