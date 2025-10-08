import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String ingredients;
  final String instructions;

  const DetailsScreen({
    super.key,
    required this.title,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text("Ingredients", style: textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(ingredients, style: textTheme.bodyMedium),
            const SizedBox(height: 16),
            Text("Instructions", style: textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(instructions, style: textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
