import 'package:flutter/material.dart';
import 'package:helloworld/core/store.dart';
import 'package:helloworld/pages/cart_page.dart';
import 'package:helloworld/pages/home_detail_page.dart';
import 'package:helloworld/utils/routes.dart';
import 'package:helloworld/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        "/": (_, __) => const MaterialPage(child: LoginPage()),
        MyRoutes.homeRoute: (_, __) => const MaterialPage(child: HomePage()),
        MyRoutes.homeDetailsRoute: (uri, _) {
          final catalog = (VxState.store as MyStore)
              .catalog
              .getById(int.parse(uri.queryParameters["id"].toString()));
          return MaterialPage(child: HomeDetailPage(catalog: catalog));
        },
        MyRoutes.loginRoute: (_, __) => const MaterialPage(child: LoginPage()),
        MyRoutes.cartRoute: (_, __) => const MaterialPage(child: CartPage()),
      }),
      // initialRoute: MyRoutes.homeRoute,
      // routes: {
      //   "/": (context) => const LoginPage(),
      //   MyRoutes.homeRoute: (context) => const HomePage(),
      //   MyRoutes.loginRoute: (context) => const LoginPage(),
      //   MyRoutes.cartRoute: (context) => const CartPage(),
      // },
    );
  }
}
