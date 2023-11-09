import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/mealsscreen.dart';
import 'package:meal_app/widget/categorygridview.dart';
import 'package:meal_app/models/category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  void _screenSelect(BuildContext context, Category category) {
    List<Meal> meallist = [];
    for(final meals1 in dummyMeals){
      for(int i=0; i< meals1.categories.length; i++){
        if(meals1.categories[i] == category.id){
          meallist.add(meals1);
      }
      }
    }
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => MealsScreen(title: category.title, meals: meallist),
        )); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Categories"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          //availableCategories.map((category) => CategoryGridView(category: category)).toList(),  (doesn't work because of color widget)
          for (final category in availableCategories)
            CategoryGridView(
              category: category,
              onSelectedCategory: () => _screenSelect(context , category),
            ),
        ],
      ),
    );
  }
}
