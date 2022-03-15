import 'package:online_shop_app/app/main_page/features/shopping_cart/domain/respositories/shopping_cart_repo.dart';

import '../../../online_shop_main_page/data/models/pastry_model.dart';

class RemoveFromCartUseCase{
  final ShoppingCartRepo shoppingCartRepo;

  RemoveFromCartUseCase(this.shoppingCartRepo);

  List<PastryModel> call(PastryModel pastryModel, List<PastryModel> shoppingCartList){
    return shoppingCartRepo.removeFromCart(pastryModel, shoppingCartList);
  }
}