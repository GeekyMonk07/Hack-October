import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    String desc =
        "Coding Enthisiast - An organism that turns caffeine into Code.\nFlutter Developer.";
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color(0xff213A50), const Color(0xff071930)],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/anmol.jpg",
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                )),
            SizedBox(
              height: 12,
            ),
            Text(
              "Anmol Gangwar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Social Media",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      launch("https://www.github.com/GeekyMonk07");
                    },
                    child: Image.asset(
                      "assets/images/github.png",
                      width: 23,
                      height: 23,
                    )),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: () {
                      launch("https://www.instagram.com/geekymonk07/");
                    },
                    child: Image.asset(
                      "assets/images/instagram.png",
                      width: 23,
                      height: 23,
                    )),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: () {
                      launch("https://twitter.com/iamkira07");
                    },
                    child: Image.asset(
                      "assets/images/twitter.png",
                      width: 23,
                      height: 23,
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                launch("https://www.linkedin.com/in/thelearninggeek/");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      const Color(0xffA2834D),
                      const Color(0xffBC9A5F)
                    ])),
                child: Text(
                  "Let's Connect",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
