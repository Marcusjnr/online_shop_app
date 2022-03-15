import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/favourite_bloc/favourite_state.dart';
import 'package:online_shop_app/core/enums/pastry_type.dart';

import '../../../domain/use_cases/update_pastery_in_list_usecase.dart';
import '../get_local_mock_data/get_local_mock_data_cubit.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  final UpdatePasteryInListUseCase updatePasteryInListUseCase;

  FavouriteCubit(this.updatePasteryInListUseCase) : super(FavouriteStateInitial());


  markFavourite(
      PastryModel pastery,
      List<PastryModel> pastryList,
      int index,
      ){
    PastryModel pastryModel = pastery.copyWith(favourite: !pastery.favourite);

    pastryList = updatePasteryInListUseCase.call(index, pastryList, pastryModel);
     emit(FavouriteStateMarked());
  }
}