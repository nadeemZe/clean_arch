

import 'package:clean_arch_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../products/presentation/bloc/products_bloc.dart';
import '../../../products/presentation/bloc/products_events.dart';
import '../bloc/categories_bloc.dart';
import '../bloc/categories_states.dart';

class CategoriesWidget extends ConsumerWidget{
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final int indexProvider = ref.watch(categoryProvider);
    return BlocBuilder<CategoriesBloc,CategoriesStates>(
        builder:(context,state){
          if(state is Loading ){
            return const Center(child: CircularProgressIndicator(color: Colors.white,));
          }
          else if(state is CategoriesDone ){
            return Container(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                    itemCount: state.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          ref.read(categoryProvider.notifier).state=index;
                          BlocProvider.of<ProductsBloc>(context)
                              .add(GetProductsEvent(title:state.categories[index].categoriesName ));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            state.categories[index].categoriesName,
                            style: TextStyle(
                                color: (indexProvider==index)?Colors.white:Colors.grey,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      );
                    }
                )
            );
          }
          else {return const Center(child: CircularProgressIndicator());}
        });
  }
}