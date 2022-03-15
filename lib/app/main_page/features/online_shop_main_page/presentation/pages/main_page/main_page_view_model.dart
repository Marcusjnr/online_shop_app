import 'package:online_shop_app/app/base/base_view_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/core/enums/pastry_type.dart';

import '../../bloc/get_local_mock_data/get_local_mock_data_cubit.dart';

class MainPageViewModel extends BaseViewModel{

  GetLocalMockDataCubit getLocalMockDataCubit;

  MainPageViewModel(this.getLocalMockDataCubit);

  init(){
    getLocalMockDataCubit.getLocalMockData();
  }
}