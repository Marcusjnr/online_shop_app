import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/domain/use_cases/add_to_cart.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_state.dart';

class ShoppingCartCubit extends Cubit<ShoppingCartState>{
  final AddToCartUseCase addToCartUseCase;

  ShoppingCartCubit(this.addToCartUseCase): super(ShoppingCartStateInitial());

  final List<PastryModel> shoppingCartList = [];

  addToShoppingCart(PastryModel pastry){
    addToCartUseCase.call(pastry, shoppingCartList);
    emit(ShoppingCartItemAdded(shoppingCartList));
  }

}