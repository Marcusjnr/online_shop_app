import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/use_cases/get_local_mock_data_usecase.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/use_cases/update_pastery_in_list_usecase.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/presentation/bloc/get_local_mock_data/get_local_mock_data_state.dart';
import 'package:online_shop_app/core/enums/pastry_type.dart';

class GetLocalMockDataCubit extends Cubit<GetLocalMockDataState>{
  final GetLocalMockDataUseCase getLocalMockDataUseCase;
  final UpdatePasteryInListUseCase updatePasteryInListUseCase;

  GetLocalMockDataCubit(
      this.getLocalMockDataUseCase,
      this.updatePasteryInListUseCase
      ) : super(GetLocalMockDataInitial());

  List<PastryModel> overPopularPasteryList = [];
  List<PastryModel> recommendedPasteryList = [];
  List<PastryModel> todaySpecialPasteryList = [];

   getLocalMockData(){
    List<PastryModel> pastries = getLocalMockDataUseCase.call();
    manageLists(pastries);
    emit(GetLocalMockDataLoaded(
        overPopularPasteryList,
        recommendedPasteryList,
        todaySpecialPasteryList
    ));
  }


  manageLists(List<PastryModel>? allPastryList){

    for (var pastery in allPastryList!) {
      if(pastery.pastryType == PastryType.OVERPOPULAR){
        overPopularPasteryList.add(pastery);
      }else if(pastery.pastryType == PastryType.RECOMMENDED){
        recommendedPasteryList.add(pastery);
      }else{
        todaySpecialPasteryList.add(pastery);
      }

    }

  }
}