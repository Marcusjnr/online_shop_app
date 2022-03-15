import 'package:flutter/material.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/styles/color.dart';

class ItemsContainer extends StatelessWidget {
  final Function? onTap;
  final PastryModel pastry;

  const ItemsContainer({
    Key? key,
    this.onTap,
    required this.pastry
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
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/raster/doughnut.jpg',
                      ),
                      fit: BoxFit.cover
                  ),

              ),
              child: Stack(
                children: [
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
