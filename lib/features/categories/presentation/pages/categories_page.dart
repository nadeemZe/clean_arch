import 'package:clean_arch_app/features/categories/presentation/widgets/categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_app/features/products/presentation/pages/products_page.dart';

class CategoriesPage extends StatefulWidget{
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.only(top: 51,right: 12,left: 12),
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height:MediaQuery.of(context).size.height/9,
              child: const CategoriesWidget(),
            ),
             const SizedBox(height: 25,),
             const Expanded(
               child: SizedBox(
                  child:ProductsPage()
            ),
             ),
          ],
        ),
      )
    );
  }
}