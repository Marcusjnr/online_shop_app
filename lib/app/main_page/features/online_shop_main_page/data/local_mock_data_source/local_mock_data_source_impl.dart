import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/local_mock_data_source/local_mock_data_source.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';
import 'package:online_shop_app/core/enums/pastry_type.dart';

class LocalMockDataSourceImpl implements LocalMockDataSource{

  @override
  List<PastryModel> getAllPateries() {
    List<PastryModel> pasteryList = const [
      //Over popular
      PastryModel(
          name: 'Cream Doughnut',
          image: 'assets/images/raster/doughnut.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.OVERPOPULAR,
          detail: 'Some stuff described',
          calories: '180 calories',
          deliveryTime: '2-3 days'
      ),

      PastryModel(
          name: 'Ice Cream',
          image: 'assets/images/raster/ice_cream.jpg',
          rating: 4.2,
          price: 19,
          pastryType: PastryType.OVERPOPULAR,
          detail: 'Some stuff described',
          calories: '120 calories',
          deliveryTime: '2-3 days'
      ),

      PastryModel(
          name: 'Cake',
          image: 'assets/images/raster/cake.jpg',
          rating: 3.0,
          price: 22,
          pastryType: PastryType.OVERPOPULAR,
          detail: 'Some stuff described',
          calories: '180 calories',
          deliveryTime: '2-3 days'
      ),

      PastryModel(
          name: 'Wheat Bread',
          image: 'assets/images/raster/wheat_bread.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.OVERPOPULAR,
          detail: 'Some stuff described',
          calories: '20 calories',
          deliveryTime: '2-3 days'
      ),

      //Recommended
      PastryModel(
          name: 'Cherry Pie',
          image: 'assets/images/raster/cherry_pie.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.RECOMMENDED,
          detail: 'Some stuff described',
          calories: '20 calories',
          deliveryTime: '2-3 days'
      ),

      PastryModel(
          name: 'Cinnamon Roll',
          image: 'assets/images/raster/cinnamon.jpg',
          rating: 3.2,
          price: 20,
          pastryType: PastryType.RECOMMENDED,
          detail: 'Some stuff described',
          calories: '200 calories',
          deliveryTime: '2-4 days'
      ),

      PastryModel(
          name: 'Cronut',
          image: 'assets/images/raster/cronut.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.RECOMMENDED,
          detail: 'Some stuff described',
          calories: '20 calories',
          deliveryTime: '2-3 days'
      ),

      PastryModel(
          name: 'Curry Puff',
          image: 'assets/images/raster/curry_puff.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.RECOMMENDED,
          detail: 'Some stuff described',
          calories: '20 calories',
          deliveryTime: '2-3 days'
      ),

      //Today's special
      PastryModel(
          name: 'Peach Cobbler',
          image: 'assets/images/raster/peach_cubbler.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.TODAYSPECIAL,
          detail: 'Some stuff described',
          calories: '20 calories',
          deliveryTime: '2-3 days'
      ),

      PastryModel(
          name: 'Apple Pie',
          image: 'assets/images/raster/apple_pie.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.TODAYSPECIAL,
          detail: 'Some stuff described',
          calories: '20 calories',
          deliveryTime: '2-3 days'
      ),

      PastryModel(
          name: 'Molasses Pie',
          image: 'assets/images/raster/molasses_pie.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.TODAYSPECIAL,
          detail: 'Some stuff described',
          calories: '20 calories',
          deliveryTime: '2-3 days'
      ),

      PastryModel(
          name: 'Banana Pancakes',
          image: 'assets/images/raster/banana_pancakes.jpg',
          rating: 4.2,
          price: 20,
          pastryType: PastryType.TODAYSPECIAL,
          detail: 'Some stuff described',
          calories: '20 calories',
          deliveryTime: '2-3 days'
      ),

    ];

    return pasteryList;
  }

  @override
  Future<void> savePasteries() {
    // TODO: implement savePasteries
    throw UnimplementedError();
  }

  @override
  List<PastryModel> updatePasteryInList(
      int indexOfPastery,
      List<PastryModel> pastery,
      PastryModel pastryToUpdate
      ) {
    pastery[indexOfPastery] = pastryToUpdate;
    return pastery;
  }



}