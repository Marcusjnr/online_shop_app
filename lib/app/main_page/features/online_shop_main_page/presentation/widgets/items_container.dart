import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_cubit.dart';
import 'package:online_shop_app/app/main_page/features/shopping_cart/presentation/blocs/shopping_cart/shopping_cart_state.dart';
import 'package:online_shop_app/styles/color.dart';

class ItemsContainer extends StatelessWidget {
  final Function? onTap;
  final Function favouriteTap;
  final PastryModel pastry;
  final int index;

  const ItemsContainer({
    Key? key,
    this.onTap,
    required this.pastry,
    required this.index,
    required this.favouriteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap!();
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 140,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      image: AssetImage(
                        pastry.image,
                      ),
                      fit: BoxFit.cover
                  ),

              ),
              child: Stack(
                children: [
                  Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: const LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 2),
                        colors: [Color(0x00121212), Color(0xce121212)],
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),

                  Positioned(
                    right: 12,
                    bottom: 12,
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 4,
                          right:8,
                          bottom: 4,
                          left: 8
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.primaryColor
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 14,
                          ),
                          const SizedBox(width: 8,),
                          Text(
                            pastry.rating.toString(),
                            style: Theme.of(context).textTheme.subtitle2,
                          )
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                      right: 6,
                      top: 8,
                      child: GestureDetector(
                        onTap: (){
                          favouriteTap();
                        },
                        child: Icon(
                          pastry.favourite ? Icons.favorite : Icons.favorite_outline_rounded,
                          color: Colors.white,
                        ),
                      )
                  ),

                  Positioned(
                      left: 6,
                      top: 8,
                      child: Icon(
                        pastry.addedToCart ? Icons.shopping_cart : Icons.remove_shopping_cart_outlined,
                        color: Colors.white,
                      )
                  )
                ],
              ),
            ),

            const SizedBox(height: 8,),

            Text(
              pastry.name,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                fontSize: 14
              ),
            )
          ],
        ),
      ),
    );
  }
}
