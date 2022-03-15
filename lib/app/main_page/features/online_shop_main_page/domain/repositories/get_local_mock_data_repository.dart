import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';

abstract class GetLocalMockDataRepository{
List<PastryModel> getPastriesList();

List<PastryModel> updatePasteryInList(
    int indexOfPastery,
    List<PastryModel> pastery,
    PastryModel pasteryToUpdate);
}