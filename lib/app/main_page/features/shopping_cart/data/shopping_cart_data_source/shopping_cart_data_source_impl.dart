import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/data/shopping_cart_data_source/shopping_cart_data_source.dart';

class ShoppingCartDataSourceImpl implements ShoppingCartDataSource{

  @override
  List<PastryModel> addToCart(
      PastryModel pastryModel, List<PastryModel> shoppingCartList) {
    shoppingCartList.add(pastryModel);
    return shoppingCartList;
  }

  @override
  List<PastryModel> removeFromCart(
      PastryModel pastryModel, List<PastryModel> shoppingCartList) {

    shoppingCartList.removeWhere((element)
          => element.name.trim().toLowerCase()
              == pastryModel.name.trim().toLowerCase());

    return shoppingCartList;
  }

}