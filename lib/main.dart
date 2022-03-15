import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/pages/main_page/main_page.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_cubit.dart';
import 'app/main_page/features/online_shop_main_page/presentation/bloc/favourite_bloc/favourite_cubit.dart';
import 'app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_cubit.dart';
import 'injection_container.dart' as di;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => di.sl<GetLocalMockDataCubit>(),
          ),

          BlocProvider(
            create: (_) => di.sl<ShoppingCartCubit>(),
          ),

          BlocProvider(
            create: (_) => di.sl<FavouriteCubit>(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: TextTheme(
                headline1: GoogleFonts.dmSans(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w800),

                headline2: GoogleFonts.dmSans(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w800),

                subtitle1: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: Colors.black.withOpacity(.5),
                    fontWeight: FontWeight.w200),

                subtitle2: GoogleFonts.dmSans(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w200),

                bodyText1: GoogleFonts.dmSans(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
              )),
          home: const MainPage(),
        )
    );
  }
}
