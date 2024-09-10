
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/products_bloc.dart';
import 'bloc/products_event.dart';
import 'view/splashscreen.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ProductsBloc>(
        create: (BuildContext context) =>
            ProductsBloc()..add(ProductsLoadedEvent()),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}


