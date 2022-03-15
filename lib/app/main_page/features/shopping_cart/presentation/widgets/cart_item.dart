import 'package:flutter/material.dart';
import 'package:online_shop_app/styles/color.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/raster/doughnut.jpg',),
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
                            'Facial Cleaner',
                            style: Theme.of(context).textTheme.headline2?.copyWith(
                                color: AppColors.primaryColor
                            ),
                          ),

                        ],
                      ),

                      Text(
                        'Size',
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            color: Colors.grey
                        ),
                      ),

                      Row(
                        children: [
                          Expanded(
                              child: Text(
                                '\$19',
                                style: Theme.of(context).textTheme.headline2,
                              )
                          ),
                          Expanded(
                              child: Row(
                                children: [
                                  Container(
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

                                  const SizedBox(width: 8,),
                                  Text(
                                    '1',
                                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                        fontSize: 14
                                    ),
                                  ),

                                  const SizedBox(width: 8,),

                                  Container(
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
