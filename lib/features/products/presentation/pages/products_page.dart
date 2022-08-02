

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_app/features/products/presentation/bloc/products_bloc.dart';
import 'package:clean_arch_app/features/products/presentation/bloc/products_states.dart';

import '../../../../core/responsive/responsive.dart';


class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc,ProductsStates>(
          builder: (context,state){
            if(state is Loading ){
              return const Center(child: CircularProgressIndicator(color: Colors.white,));
            }
            if(state is ProductsDone ){
              return GridView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    childAspectRatio: 0.7
                ),
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 1,
                          left: 1,
                          bottom: 60,
                          child: SizedBox(
                            height: getHeight(context)/2,
                            width: getWidth(context)/2,
                            child: FittedBox(
                                child: Image.network(
                                    state.products[index].image,
                                    fit: BoxFit.cover,
                                )
                            ),
                          ),
                        ),
                        Positioned(
                          top: 3,
                          right:3 ,
                          child: SizedBox(
                            height: getWidth(context)/15,
                            width: getWidth(context)/15,
                            child: IconButton(
                              onPressed: null,
                              constraints: BoxConstraints.tight(Size.fromWidth(getWidth(context)/15)),
                              padding: EdgeInsets.zero,
                              alignment:Alignment.center,
                              icon: Icon(Icons.favorite_border,color: Colors.red,size:getWidth(context)/15 ,),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 3,
                            left:3,
                            child: Container(
                              height: getWidth(context)/15,
                              width: getWidth(context)/9,
                              padding: const EdgeInsets.all(3),
                              decoration:BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.6',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: getWidth(context)/35
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: null,
                                    constraints: BoxConstraints.tight(Size.fromWidth(getWidth(context)/25)),
                                    padding: EdgeInsets.zero,
                                    icon: Icon(Icons.star,color:Colors.yellow,size:getWidth(context)/25 ,),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Positioned(
                            bottom: 25,
                            right:12,
                            child: Container(
                              height: getWidth(context)/12,
                              width: getWidth(context)/12,
                              decoration:BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              child: IconButton(
                                onPressed: null,
                                padding: EdgeInsets.zero,
                                alignment:Alignment.center,
                                icon: Icon(Icons.add_shopping_cart_outlined,color:Colors.white,size:getWidth(context)/25 ,),
                              ),
                            )
                        ),
                        const Positioned(
                            bottom: 35,
                            child: Text(
                              'PlayStation 5',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            )
                        ),
                        Positioned(
                            bottom: 7,
                            child: Text(
                              state.products[index].price.toString(),
                              style:const TextStyle(
                                color: Colors.black87,
                              ),
                            )
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
          );
  }
}