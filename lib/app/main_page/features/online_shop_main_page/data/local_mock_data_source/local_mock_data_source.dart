import 'package:online_shop_app/core/enums/pastry_type.dart';

import '../models/pastry_model.dart';

abstract class LocalMockDataSource{
  List<PastryModel> getAllPateries();

  Future<void> savePasteries();

  List<PastryModel> updatePasteryInList(
      int indexOfPastery,
      List<PastryModel> pastery,
      PastryModel pasteryToUpdate
      );
}