import 'package:cook_app/home_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: Image.asset(
                'images/woman_cooking.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            // Image goes here
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'UNLIMITED PREMIUM RECIPES',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: const Color.fromARGB(255, 232, 103, 64)
                              .withOpacity(.6),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Start \nCooking',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 255, 206, 93),
                                offset: Offset(2, 2),
                              )
                            ],
                          ),
                          height: 65,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * .05),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 65, 193, 165),
                                offset: Offset(2, 2),
                              )
                            ],
                          ),
                          height: 65,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(),
                            onPressed: () {},
                            child: Text(
                              'Sign up',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
