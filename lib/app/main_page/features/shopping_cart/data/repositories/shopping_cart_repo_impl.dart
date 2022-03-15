import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/data/shopping_cart_data_source/shopping_cart_data_source.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/domain/respositories/shopping_cart_repo.dart';

class ShoppingCartRepoImpl implements ShoppingCartRepo{
  final ShoppingCartDataSource shoppingCartDataSource;

  ShoppingCartRepoImpl(this.shoppingCartDataSource);

  @override
  List<PastryModel> addToCart(PastryModel pastryModel, List<PastryModel> shoppingCartList) {
    return shoppingCartDataSource.addToCart(pastryModel, shoppingCartList);
  }


}