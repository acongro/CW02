import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {
      "title": "Spaghetti",
      "ingredients": "Pasta, Tomato Sauce, Garlic, Olive Oil, Parmesan",
      "instructions": "1. Boil pasta.\n2. Cook sauce.\n3. Mix together.",
    },
    {
      "title": "Fried Rice",
      "ingredients": "Rice, Egg, Carrot, Peas, Soy Sauce",
      "instructions":
          "1. Cook rice.\n2. Stir-fry vegetables.\n3. Add rice and soy sauce.",
    },
    {
      "title": "Tacos",
      "ingredients": "Taco Shells, Beef, Lettuce, Cheese, Salsa",
      "instructions":
          "1. Cook beef.\n2. Fill shells with ingredients.\n3. Add salsa and cheese.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recipe Book")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    title: recipes[index]['title']!,
                    ingredients: recipes[index]['ingredients']!,
                    instructions: recipes[index]['instructions']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
