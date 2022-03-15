import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/local_mock_data_source/local_mock_data_source.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/repositories/get_local_mock_data_repository.dart';

class GetLocalMockDataRepositoryImpl implements GetLocalMockDataRepository{
  final LocalMockDataSource localMockDataSource;

  GetLocalMockDataRepositoryImpl(this.localMockDataSource);

  @override
  List<PastryModel> getPastriesList() {
    return localMockDataSource.getAllPateries();
  }

  @override
  List<PastryModel> updatePasteryInList(int indexOfPastery, List<PastryModel> pastery, PastryModel pasteryToUpdate) {
    return localMockDataSource.updatePasteryInList(indexOfPastery, pastery, pasteryToUpdate);
  }

}