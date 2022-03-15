import 'package:online_shop_app/app/base/base_view_model.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_cubit.dart';

import '../../../data/models/pastry_model.dart';

class CartDisplayViewModel extends BaseViewModel{
  num itemsInCart = 0;

  ShoppingCartCubit shoppingCartCubit;

  CartDisplayViewModel(this.shoppingCartCubit);

  getShoppingCartLength(List<PastryModel> pastryList){
    itemsInCart = pastryList.length;
  }

  init(){
    itemsInCart = shoppingCartCubit.shoppingCartList.length;
  }
}