import 'package:get_it/get_it.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/repositories/get_local_mock_data_repository.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/use_cases/update_pastery_in_list_usecase.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_cubit.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/data/repositories/shopping_cart_repo_impl.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/data/shopping_cart_data_source/shopping_cart_data_source.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/domain/respositories/shopping_cart_repo.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/domain/use_cases/add_to_cart.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/domain/use_cases/remove_from_cart_use_case.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_cubit.dart';

import 'app/main_page/features/online_shop_main_page/data/local_mock_data_source/local_mock_data_source.dart';
import 'app/main_page/features/online_shop_main_page/data/local_mock_data_source/local_mock_data_source_impl.dart';
import 'app/main_page/features/online_shop_main_page/data/repositories/get_local_mock_data_repository_impl.dart';
import 'app/main_page/features/online_shop_main_page/domain/use_cases/get_local_mock_data_usecase.dart';
import 'app/main_page/features/shopping_cart/data/shopping_cart_data_source/shopping_cart_data_source_impl.dart';

final sl = GetIt.instance;

Future<void> init() async{
  //Blocs
  sl.registerFactory<GetLocalMockDataCubit>(() => GetLocalMockDataCubit(
    sl.call(),
    sl.call(),
  ));

  sl.registerFactory<ShoppingCartCubit>(() => ShoppingCartCubit(
      sl.call(),
      sl.call(),
      sl.call(),
  ));

  //use cases
  sl.registerLazySingleton<GetLocalMockDataUseCase>(
      () => GetLocalMockDataUseCase(sl.call()));
  sl.registerLazySingleton<AddToCartUseCase>(
          () => AddToCartUseCase(sl.call()));
  sl.registerLazySingleton<UpdatePasteryInListUseCase>(
          () => UpdatePasteryInListUseCase(sl.call()));
  sl.registerLazySingleton<RemoveFromCartUseCase>(
          () => RemoveFromCartUseCase(sl.call()));

  //repository
  sl.registerLazySingleton<GetLocalMockDataRepository>(
          () => GetLocalMockDataRepositoryImpl(sl.call()));
  sl.registerLazySingleton<ShoppingCartRepo>(
          () => ShoppingCartRepoImpl(sl.call()));

  //data source
  sl.registerLazySingleton<LocalMockDataSource>(() => LocalMockDataSourceImpl());
  sl.registerLazySingleton<ShoppingCartDataSource>(() => ShoppingCartDataSourceImpl());
}