import 'package:cook_app/recipe_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _cuisines = [
    'Chicken',
    'Beef',
    'Chicken',
    'Fish',
    'Chicken',
    'Beef',
    'Chicken',
    'Fish',
    'Chicken',
    'Beef',
    'Chicken',
    'Fish',
  ];

  final _cuisineColors = const [
    Color.fromARGB(255, 229, 251, 243),
    Color.fromARGB(255, 247, 250, 231),
    Color.fromARGB(255, 233, 230, 249),
    Color.fromARGB(255, 251, 229, 236),
  ];

  final _lessonNames = const [
    'Chinese Vegetables',
    'Chili Chicken',
    'Beef Stew',
  ];

  final _lessonColors = const [
    Color.fromARGB(255, 66, 194, 167),
    Color.fromARGB(255, 255, 206, 93),
    Color.fromARGB(255, 0, 158, 220),
  ];

  final _lessonPeriods = const [
    '5 Lessons ● 3 h 12 m',
    '3 Lessons ● 2 h 2 m',
    '4 Lessons ● 5 h 30 m',
  ];
  final _lessonImages = const [
    'images/chinese_vegetable.png',
    'images/chili_chicken.png',
    'images/chinese_vegetable.png',
  ];

  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'images/drawer_toggle.png',
                        width: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 130,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _cuisines.length,
                    itemBuilder: (context, index) => Cuisine(
                      label: _cuisines[index],
                      image: 'images/${_cuisines[index].toLowerCase()}.png',
                      color: _cuisineColors[index % 4],
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 15),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'I would like to cook',
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontWeight: FontWeight.w900,
                                  wordSpacing: 2,
                                  letterSpacing: 2,
                                ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: const Color.fromARGB(255, 245, 247, 251),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                CupertinoIcons.search,
                                color: Colors.black87,
                                size: 25,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                controller: _searchController,
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  suffixIcon: _searchController.text.isNotEmpty
                                      ? GestureDetector(
                                          onTap: _searchController.clear,
                                          child: const Icon(Icons.close,
                                              color: Colors.red),
                                        )
                                      : null,
                                  hintText: 'Search for your query',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        wordSpacing: 2,
                                        letterSpacing: 1,
                                      ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox.square(
                              dimension: 60,
                              child: IconButton.filled(
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                iconSize: 35,
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.slider_horizontal_3,
                                  color: Colors.black87,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width - 60,
                              decoration: ShapeDecoration(
                                  shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(105)),
                                  color: const Color.fromARGB(255, 34, 45, 87),
                                  shadows: [
                                    BoxShadow(
                                      color: const Color(0xFF222D57)
                                          .withOpacity(.1),
                                      offset: const Offset(0, 12),
                                    ),
                                  ]),
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width - 50,
                              decoration: ShapeDecoration(
                                  shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(105)),
                                  color: const Color.fromARGB(255, 34, 45, 87),
                                  shadows: [
                                    BoxShadow(
                                      color: const Color(0xFF222D57)
                                          .withOpacity(.3),
                                      offset: const Offset(0, 8),
                                    ),
                                  ]),
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width - 40,
                              decoration: ShapeDecoration(
                                  shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(105)),
                                  color: const Color.fromARGB(255, 34, 45, 87),
                                  shadows: [
                                    BoxShadow(
                                      color: const Color(0xFF222D57)
                                          .withOpacity(.5),
                                      offset: const Offset(0, 5),
                                    ),
                                  ]),
                            ),
                            Container(
                              height: 200,
                              width: double.infinity,
                              decoration: ShapeDecoration(
                                shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(105)),
                                color: const Color.fromARGB(255, 34, 45, 87),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Unlock\nUnlimited Recipes',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: FilledButton(
                                        style: FilledButton.styleFrom(
                                          backgroundColor: Colors.black,
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Go Premium',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Text(
                  'Latest Recipes',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: _lessonNames.length,
                      itemBuilder: (context, index) => LessonCard(
                        lessonName: _lessonNames[index % _lessonNames.length],
                        lessonPeriod:
                            _lessonPeriods[index % _lessonPeriods.length],
                        bgColor: _lessonColors[index % _lessonColors.length],
                        image: _lessonImages[index % _lessonImages.length],
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RecipeDetailPage(),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cuisine extends StatelessWidget {
  const Cuisine({
    super.key,
    required this.image,
    required this.label,
    required this.color,
  });

  final String image;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: color,
            shape: const CircleBorder(),
          ),
          child: Image.asset(
            image,
            width: 60,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
    required this.lessonName,
    required this.lessonPeriod,
    required this.bgColor,
    required this.image,
    this.onTap,
  });

  final String lessonName;
  final String lessonPeriod;
  final Color bgColor;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: bgColor,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  image,
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            Text(
              lessonName,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(lessonPeriod),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox.square(
                  dimension: 30,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_sharp),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox.square(
                  dimension: 30,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                    ),
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_outward_sharp),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
