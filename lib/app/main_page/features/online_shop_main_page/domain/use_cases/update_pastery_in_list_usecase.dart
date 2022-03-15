import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/repositories/get_local_mock_data_repository.dart';

class UpdatePasteryInListUseCase{
  final GetLocalMockDataRepository getLocalMockDataRepository;

  UpdatePasteryInListUseCase(this.getLocalMockDataRepository);

  List<PastryModel> call(int indexOfPastery,
      List<PastryModel> pastery,
      PastryModel pasteryToUpdate){
    return getLocalMockDataRepository.updatePasteryInList(indexOfPastery, pastery, pasteryToUpdate);
  }

}