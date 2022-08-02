import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arch_app/di.dart';
import 'package:clean_arch_app/core/external/fluro_package.dart';
import 'package:clean_arch_app/features/categories/presentation/bloc/categories_bloc.dart';
import 'package:clean_arch_app/features/categories/presentation/bloc/categories_events.dart';
import 'package:clean_arch_app/features/products/presentation/bloc/products_bloc.dart';
import 'package:clean_arch_app/features/products/presentation/bloc/products_events.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryProvider=StateProvider((ref)=>0);

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  Routers.setupRouter();
  runApp(
      const ProviderScope(
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider(
        create:  (_)=>getIt<CategoriesBloc>()..add(GetCategoriesEvent())),
       BlocProvider(
         create: (_)=>getIt<ProductsBloc>()..add(GetProductsEvent(title: 'electronics')),)
        ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'app',
            initialRoute: '/features/authentication/presentation/pages/login_page',
            onGenerateRoute: Routers.router.generator,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
          )
    );
  }
}