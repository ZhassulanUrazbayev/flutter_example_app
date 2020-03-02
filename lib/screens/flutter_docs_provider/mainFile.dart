import 'package:flutter/material.dart';
import 'package:flutter_example_app/models/json_parsing_models/flutter_docs_provider/cart.dart';
import 'package:flutter_example_app/models/json_parsing_models/flutter_docs_provider/catalog.dart';
import 'package:flutter_example_app/screens/flutter_docs_provider/cart.dart';
import 'package:flutter_example_app/screens/flutter_docs_provider/catalog.dart';
import 'package:flutter_example_app/utils/theme.dart';
import 'package:provider/provider.dart';

class MyAppProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        // In this sample app, CatalogModel never changes, so a simple Provider
        // is sufficient.
        Provider(create: (context) => CatalogModel()),
        // CartModel is implemented as a ChangeNotifier, which calls for the use
        // of ChangeNotifierProvider. Moreover, CartModel depends
        // on CatalogModel, so a ProxyProvider is needed.
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            cart.catalog = catalog;
            return cart;
          },
        ),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => MyCatalog(),
          '/cart': (context) => MyCart(),
        },
      ),
    );
  }
}