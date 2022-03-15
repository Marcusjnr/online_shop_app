import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_cubit.dart';
import 'package:online_shop_app/styles/color.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CartItem extends StatelessWidget {
  final PastryModel pastry;
  final int index;
  final Function addClicked;
  final Function subtractClicked;

  const CartItem({
    Key? key,
    required this.pastry,
    required this.index,
    required this.addClicked,
    required this.subtractClicked
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        background: Container(
          color: Colors.red,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.centerRight,
          child: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
        onDismissed: (_){
          ShoppingCartCubit shoppingCartCubit = BlocProvider.of<ShoppingCartCubit>(context);

         shoppingCartCubit.removeFromShoppingCart(
              pastry,
              index,
              shoppingCartCubit.shoppingCartList
         );
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage(
                            pastry.image,),
                          fit: BoxFit.cover
                      ),
                    ),
                  )
              ),

              const SizedBox(width: 20,),

              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            pastry.name,
                            style: Theme.of(context).textTheme.headline2?.copyWith(
                                color: AppColors.primaryColor
                            ),
                          ),

                        ],
                      ),

                      const SizedBox(height: 20,),
                      Text(
                        pastry.calories,
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            color: Colors.grey
                        ),
                      ),

                      const SizedBox(height: 30,),

                      Row(
                        children: [
                          Expanded(
                              child: Text(
                                '\$${pastry.price.toString()}',
                                style: Theme.of(context).textTheme.headline2,
                              )
                          ),
                          Expanded(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      subtractClicked();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: AppColors.primaryColor),
                                      ),
                                      padding: const EdgeInsets.all(1.4),
                                      child: const Center(
                                        child: Icon(
                                          FeatherIcons.minus,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(width: 8,),

                                  Text(
                                    pastry.quantity.toString(),
                                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                        fontSize: 14
                                    ),
                                  ),

                                  const SizedBox(width: 8,),

                                  GestureDetector(
                                    onTap: (){
                                      addClicked();
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.primaryColor,
                                      ),
                                      padding: const EdgeInsets.all(4),
                                      child: const Center(
                                        child: Icon(
                                          FeatherIcons.plus,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ],
                      )
                    ],
                  )
              )
            ],
          ),
        )
    );
  }
}
