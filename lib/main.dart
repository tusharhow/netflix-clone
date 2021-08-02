import 'package:flutter/material.dart';
import 'package:netflix_clone/constants.dart';

import 'components/faq_items.dart';
import 'components/get_started_btn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: darkColor,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 750,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image: AssetImage('images/bg.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    color: darkColor.withOpacity(0.66),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2,
                      vertical: defaultPadding,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage('images/logo.png'),
                          height: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Sign In'),
                          style: ElevatedButton.styleFrom(
                              primary: commonRedColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 15),
                              textStyle: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Spacer(),
                      Text(
                        'Unlimited movies, TV\n shows, and more.',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Watch anywhere. Cancel anytime.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Ready to watch? Enter your email to create or restart your membership.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      GetStartedBTN(),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: dividerThickness,
              height: 7,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding,
                      vertical: defaultPadding * 4,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Enjoy on your TV.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '      Watch on Smart TVs, Playstation, Xbox,\n      Chromecast, Apple TV, Blu-ray players, and\n       more.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image(
                    image: AssetImage('images/tv.png'),
                  ),
                ],
              ),
            ),
            Divider(
              color: dividerThickness,
              height: 7,
            ),
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('images/download.png'),
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding,
                      vertical: defaultPadding * 4,
                    ),
                    child: Column(
                      children: [
                        Text(
                          '       Download your shows\n       to watch offline.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '     Save your favorites easily and always have\n     something to watch.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: dividerThickness,
              height: 7,
            ),
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('images/kids.png'),
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding,
                      vertical: defaultPadding * 4,
                    ),
                    child: Column(
                      children: [
                        Text(
                          '      Create profiles for kids.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Send kids on adventures with their favorite\n characters in a space made just for them—\nfree with your membership.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: dividerThickness,
              height: 7,
            ),
            Container(
              height: 800,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: defaultPadding * 3,
                  ),
                  Text(
                    'Frequently Asked Questions',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: defaultPadding * 3,
                  ),
                  FaqItems(
                    label: 'What is Netflix?',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FaqItems(
                    label: 'How much does Netflix cost?',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FaqItems(
                    label: 'Where can i watch?',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FaqItems(
                    label: 'What can i watch in Netflix?',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FaqItems(
                    label: 'Is Netflix good for kids?',
                  ),
                  SizedBox(
                    height: defaultPadding * 3,
                  ),
                  Text(
                    'Ready to watch? Enter your email to create or restart your membership.',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  GetStartedBTN(),
                  SizedBox(
                    height: defaultPadding * 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
