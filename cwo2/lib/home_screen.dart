import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {
      "title": "Chicken Parmesan",
      "ingredients":
          "2 chicken breasts (butterflied & pounded), 1 cup breadcrumbs, 1/2 cup grated Parmesan, 2 eggs (beaten), 1 cup marinara, 4 oz mozzarella, salt, pepper, olive oil, fresh basil (optional)",
      "instructions":
          "1) Prep: Season chicken with salt & pepper. Set up dredging: beaten eggs in one bowl, breadcrumbs mixed with Parmesan in another.\n"
          "2) Dredge: Dip chicken in egg, then press into breadcrumb-Parmesan mix until well coated.\n"
          "3) Pan-fry: Heat 2–3 Tbsp olive oil in a skillet (med-high). Cook chicken 3–4 min/side until golden and ~160°F internal.\n"
          "4) Top & melt: Spoon marinara over each piece, add mozzarella, then cover skillet or broil 2–3 min until cheese melts/browns.\n"
          "5) Finish: Rest 2 min, garnish with basil, serve over spaghetti or alongside salad.",
    },
    {
      "title": "Fettuccine Alfredo",
      "ingredients":
          "12 oz fettuccine, 6 Tbsp unsalted butter, 1 cup heavy cream, 1 cup freshly grated Parmesan, salt, pepper, pinch nutmeg, chopped parsley (optional)",
      "instructions":
          "1) Pasta: Boil fettuccine in salted water until just shy of al dente; reserve 1/2 cup pasta water, drain.\n"
          "2) Sauce base: In a large pan on medium, melt butter, add cream; simmer gently 2–3 min (do not boil hard).\n"
          "3) Cheese in: Off heat, whisk in Parmesan until smooth. Season with salt, pepper, and a pinch of nutmeg.\n"
          "4) Combine: Toss pasta in sauce; splash in reserved pasta water as needed to get a glossy coating.\n"
          "5) Serve: Plate immediately; sprinkle parsley and extra Parmesan.",
    },
    {
      "title": "Spaghetti & Meatballs",
      "ingredients":
          "12 oz spaghetti, 1 lb ground beef (or mix beef/pork), 1/2 cup breadcrumbs, 1 egg, 1/4 cup grated Parmesan, 2 cloves garlic (minced), 1 tsp Italian seasoning, salt, pepper, 2 cups marinara, olive oil",
      "instructions":
          "1) Mix: In a bowl combine ground meat, breadcrumbs, egg, Parmesan, garlic, Italian seasoning, salt & pepper. Mix gently.\n"
          "2) Shape: Form golf-ball-size meatballs.\n"
          "3) Brown: Film skillet with olive oil; brown meatballs on all sides (med heat) ~6–8 min total.\n"
          "4) Simmer: Add marinara, cover slightly ajar, simmer 10–15 min until meatballs are cooked through.\n"
          "5) Pasta: Cook spaghetti in salted water to al dente; drain and toss with a little sauce. Top with meatballs & extra Parmesan.",
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
            trailing: const Icon(Icons.chevron_right),
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
