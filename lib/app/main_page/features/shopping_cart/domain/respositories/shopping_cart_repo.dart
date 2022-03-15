import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';

abstract class ShoppingCartRepo{
  List<PastryModel> addToCart(PastryModel pastryModel, List<PastryModel> shoppingCartList);

  List<PastryModel> removeFromCart(
      PastryModel pastryModel,
      List<PastryModel> shoppingCartList
      );
}