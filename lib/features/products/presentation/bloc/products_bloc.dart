

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_app/features/products/domain/entity/products.dart';
import 'package:clean_arch_app/features/products/domain/use_case/get_products.dart';
import 'package:clean_arch_app/features/products/presentation/bloc/products_events.dart';
import 'package:clean_arch_app/features/products/presentation/bloc/products_states.dart';

class ProductsBloc extends Bloc<ProductsEvents,ProductsStates>{
  GetProductsUseCase getProductsUseCase;
  ProductsBloc({required this.getProductsUseCase}):super (ProductsInit()){
    on<ProductsEvents>((event, emit)async {
      if(event is GetProductsEvent) {
        emit (Loading());
        List<Products> p =await getProductsUseCase.getProducts(event.title);
        emit(ProductsDone(products: p));
      }
    } );
  }
}