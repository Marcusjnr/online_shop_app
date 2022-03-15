import '../models/pastry_model.dart';

abstract class LocalMockDataSource{
  List<PastryModel> getAllPateries();

  Future<void> savePasteries();
}