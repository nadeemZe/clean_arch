
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_app/features/categories/domain/use_cases/get_categories.dart';
import '../../domain/entity/categories.dart';
import 'categories_events.dart';
import 'categories_states.dart';


class CategoriesBloc extends Bloc<CategoriesEvent,CategoriesStates>{
 final GetCategoriesUseCase getCategoriesUseCase;

 CategoriesBloc({required this.getCategoriesUseCase}) : super(CategoriesInit()){
   on<CategoriesEvent>((event, emit)async {
       if(event is GetCategoriesEvent) {
         emit (Loading());
         List<Categories> c =await getCategoriesUseCase.getCategories();
         emit(CategoriesDone(categories: c));
       }
 } );
 }
}