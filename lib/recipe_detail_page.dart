import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SelectedTab { ingredient, steps }

class RecipeDetailPage extends StatefulWidget {
  const RecipeDetailPage({super.key});

  @override
  State<RecipeDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  SelectedTab _selectedTab = SelectedTab.ingredient;

  final _ingredientLabels = const [
    'Chopped\nPotato',
    '500 Gm\nChicken',
    'Baby\nTomato',
    'Fresh\nParsley',
  ];

  final _ingredientImages = const [
    'images/chopped_potato.png',
    'images/drum_sticks.png',
    'images/riped_tomatoes.png',
    'images/fresh_parsely.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                height: MediaQuery.of(context).size.height * .3,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('images/chicken_meal.png'),
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton.filledTonal(
                        style: IconButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(CupertinoIcons.back),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 1),
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 247, 251),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      height: 5,
                      width: 50,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Chicken Steak with Grilled Vegetables',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromARGB(255, 254, 212, 73),
                          child: Icon(
                            CupertinoIcons.person_fill,
                            size: 30,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: '  Yarmy Code ',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                            children: [
                              TextSpan(
                                text: '(10 recipes)',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 248, 86, 89)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'images/recipe_duration.png',
                                height: 40,
                              ),
                              const Text('30 min')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'images/recipe_steps.png',
                                height: 40,
                              ),
                              const Text('10 steps')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'images/cheff_level.png',
                                height: 40,
                              ),
                              const Text('Beginner')
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: SwitchItem(
                                label: 'Ingredient',
                                isActive:
                                    _selectedTab == SelectedTab.ingredient,
                                onTap: () => _toggleTab(SelectedTab.ingredient),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: SwitchItem(
                                label: 'Steps',
                                isActive: _selectedTab == SelectedTab.steps,
                                onTap: () => _toggleTab(SelectedTab.steps),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 245, 247, 251),
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _ingredientImages.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 4),
                  itemBuilder: (context, index) => IngredientCard(
                    image: _ingredientImages[index],
                    label: _ingredientLabels[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleTab(SelectedTab tab) {
    if (tab != _selectedTab) {
      setState(() => _selectedTab = tab);
    }
  }
}

class IngredientCard extends StatelessWidget {
  const IngredientCard({super.key, required this.image, required this.label});

  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: 90,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image,
            height: 50,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}

class SwitchItem extends StatelessWidget {
  const SwitchItem({
    super.key,
    required this.label,
    required this.isActive,
    this.onTap,
  });

  final String label;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: isActive
              ? const Color.fromARGB(255, 245, 247, 251)
              : Colors.white,
        ),
        duration: const Duration(milliseconds: 400),
        child: Center(
            child: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge,
        )),
      ),
    );
  }
}
