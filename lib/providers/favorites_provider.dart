import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoritesMealsNotifier extends StateNotifier<List<Meal>> {
  FavoritesMealsNotifier() : super([]);

  bool toggleFavorite(Meal meal) {
    final isFavorite = state.contains(meal);
    if (isFavorite) {
      state = state.where((item) => item.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoritesMealsProvider =
    StateNotifierProvider<FavoritesMealsNotifier, List<Meal>>((ref) {
  return FavoritesMealsNotifier();
});
