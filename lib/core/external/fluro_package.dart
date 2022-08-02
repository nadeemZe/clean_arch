

import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:clean_arch_app/features/authentication/presentation/pages/login_page.dart';
import 'package:clean_arch_app/features/categories/presentation/pages/categories_page.dart';
import 'package:clean_arch_app/features/products/presentation/pages/products_page.dart';

class Routers {
  static final  router = FluroRouter();
  static final Handler _loginHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) => const LogInPage());
  static final _categoriesHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) => const CategoriesPage());
  static final _cHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) => const ProductsPage());
  static void setupRouter() {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
          return   ;
        });
    router.define(
      '/features/authentication/presentation/pages/login_page',
      handler: _loginHandler,
    );
    router.define(
      '/features/categories/presentation/pages/categories_page',
      handler: _categoriesHandler,
    );
    router.define(
      '/features/products/presentation/pages/products_page',
      handler: _cHandler,
    );
  }
}