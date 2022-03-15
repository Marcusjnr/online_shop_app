import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/repositories/get_local_mock_data_repository.dart';

class GetLocalMockDataUseCase{
  final GetLocalMockDataRepository localMockDataRepository;

  GetLocalMockDataUseCase(this.localMockDataRepository);

  List<PastryModel> call(){
    return localMockDataRepository.getPastriesList();
  }
}