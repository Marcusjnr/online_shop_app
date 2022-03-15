import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop_app/app/main_page/features/online_shop_main_page/data/models/pastry_model.dart';

abstract class GetLocalMockDataState extends Equatable{
  const GetLocalMockDataState();
}

class GetLocalMockDataInitial extends GetLocalMockDataState{
  @override
  List<Object> get props => [];
}

class GetLocalMockDataLoading extends GetLocalMockDataState{
  @override
  List<Object> get props => [];
}

class GetLocalMockDataLoaded extends GetLocalMockDataState{
  final List<PastryModel> overPopularPasteryList;
  final List<PastryModel> recommendedPasteryList;
  final List<PastryModel> todaySpecialPasteryList;

  const GetLocalMockDataLoaded(
      this.overPopularPasteryList,
      this.recommendedPasteryList,
      this.todaySpecialPasteryList);

  @override
  List<Object> get props => [];
}
