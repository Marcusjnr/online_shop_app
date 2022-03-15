import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/domain/use_cases/update_pastery_in_list_usecase.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/domain/use_cases/add_to_cart.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/domain/use_cases/remove_from_cart_use_case.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_state.dart';

class ShoppingCartCubit extends Cubit<ShoppingCartState>{
  final AddToCartUseCase addToCartUseCase;
  final RemoveFromCartUseCase removeFromCartUseCase;
  final UpdatePasteryInListUseCase updatePasteryInListUseCase;

  ShoppingCartCubit(
      this.addToCartUseCase,
      this.updatePasteryInListUseCase,
      this.removeFromCartUseCase
      ): super(ShoppingCartStateInitial());

  List<PastryModel> shoppingCartList = [];

  addToShoppingCart(
      PastryModel pastry,
      int indexOfPastery,
      List<PastryModel> pastryList
      ){
    addToCartUseCase.call(pastry, shoppingCartList);

    PastryModel pastryModel = pastry.copyWith(addedToCart: true);

    pastryList = updatePasteryInListUseCase.call(
        indexOfPastery, pastryList, pastryModel);

    emit(ShoppingCartItemAdded(shoppingCartList));
  }

  removeFromShoppingCart(
      PastryModel pastry,
      int indexOfPastery,
      List<PastryModel> pastryList
      ){
    removeFromCartUseCase.call(pastry, shoppingCartList);

    PastryModel pastryModel = pastry.copyWith(addedToCart: false);

    pastryList = updatePasteryInListUseCase.call(
        indexOfPastery, pastryList, pastryModel);

    emit(ShoppingCartItemAdded(shoppingCartList));
  }

  addQuantity(PastryModel pastry, int index){

    PastryModel replacePastry = pastry.copyWith(
        quantity: pastry.quantity + 1,
      price: pastry.price * 2
    );

    shoppingCartList[index] = replacePastry;
    
    emit(ShoppingCartQuantityChanged());
  }

  subtractQuantity(PastryModel pastry, int index){
    PastryModel replacePastry = pastry.copyWith(
        quantity: pastry.quantity - 1,
        price: pastry.price / 2
    );

    shoppingCartList[index] = replacePastry;

    emit(ShoppingCartQuantityChanged());
  }


}