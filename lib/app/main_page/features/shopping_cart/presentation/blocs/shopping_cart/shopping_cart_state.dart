import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';

abstract class ShoppingCartState{
  const ShoppingCartState();
}

class ShoppingCartStateInitial extends ShoppingCartState{

}

class ShoppingCartItemAdded extends ShoppingCartState{
  final List<PastryModel> shoppingCartList;

  const ShoppingCartItemAdded(this.shoppingCartList);

}

class ShoppingCartItemRemoved extends ShoppingCartState{

  final List<PastryModel> shoppingCartList;

  const ShoppingCartItemRemoved(this.shoppingCartList);

}

class ShoppingCartQuantityChanged extends ShoppingCartState{

  const ShoppingCartQuantityChanged();

}