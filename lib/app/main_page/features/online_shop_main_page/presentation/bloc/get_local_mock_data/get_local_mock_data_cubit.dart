import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/use_cases/get_local_mock_data_usecase.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_state.dart';
import 'package:online_shop_app/core/enums/pastry_type.dart';

class GetLocalMockDataCubit extends Cubit<GetLocalMockDataState>{
  final GetLocalMockDataUseCase getLocalMockDataUseCase;

  GetLocalMockDataCubit(this.getLocalMockDataUseCase) : super(GetLocalMockDataInitial());

  final List<PastryModel> _overPopularPasteryList = [];
  final List<PastryModel> _recommendedPasteryList = [];
  final List<PastryModel> _todaySpecialPasteryList = [];

   getLocalMockData(){
    List<PastryModel> pastries = getLocalMockDataUseCase.call();
    manageLists(pastries);
    emit(GetLocalMockDataLoaded(
        _overPopularPasteryList,
        _recommendedPasteryList,
        _todaySpecialPasteryList
    ));
  }

  manageLists(List<PastryModel>? allPastryList){

    for (var pastery in allPastryList!) {
      if(pastery.pastryType == PastryType.OVERPOPULAR){
        _overPopularPasteryList.add(pastery);
      }else if(pastery.pastryType == PastryType.RECOMMENDED){
        _recommendedPasteryList.add(pastery);
      }else{
        _todaySpecialPasteryList.add(pastery);
      }

    }

  }
}