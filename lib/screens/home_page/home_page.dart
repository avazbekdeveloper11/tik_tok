import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int rand = 1;
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Dismissible(
        direction: DismissDirection.vertical,
        key: UniqueKey(),
        onDismissed: (v) {
          setState(() {
            rand++;
          });
        },
        child: Stack(
          children: [
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/loading.gif",
                  image: "https://source.unsplash.com/random/$rand",
                  fit: BoxFit.cover,
                )),
            Positioned(
              top: size.height * 0.025,
              left: size.width / 3.8,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Following",
                      style: TextStyle(
                          color: Colors.black, fontSize: size.width * 0.05),
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.05),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "For You",
                      style: TextStyle(
                          color: Colors.black, fontSize: size.width * 0.05),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: size.width * 0.01,
              child: SizedBox(
                height: size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: size.height * 0.045,
                      backgroundColor: Colors.pink,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/$rand+1"),
                        radius: size.height * 0.04,
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * 0.058),
                          child: Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: size.width * 0.07,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: size.width * 0.1,
                        ),
                        Text(Random().nextInt(5000).toString())
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.comment_rounded,
                          size: size.width * 0.1,
                        ),
                        Text(Random().nextInt(5000).toString())
                      ],
                    ),
                    Icon(
                      Icons.share,
                      size: size.width * 0.1,
                    ),
                    CircleAvatar(
                      radius: size.height * 0.045,
                      backgroundColor: Colors.pink,
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://source.unsplash.com/random/$rand+1"),
                          radius: size.height * 0.04),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                left: size.width * 0.01,
                bottom: size.height * 0.015,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tik-Tok | 1-28",
                      style: TextStyle(fontSize: size.width * 0.05),
                    ),
                    Text(
                      "#Tik-Tok",
                      style: TextStyle(fontSize: size.width * 0.05),
                    ),
                    Row(
                      children: [
                        Icon(Icons.music_note),
                        Text(
                          "Tik-Tok",
                          style: TextStyle(fontSize: size.width * 0.05),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        iconSize: size.width * 0.07,
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Discover",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: "",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_comment_outlined),
              label: "InBox",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Me",
              backgroundColor: Colors.black),
        ],
        onTap: (i) {
          setState(
            () {
              _currentIndex = i;
            },
          );
        },
      ),
    );
  }
}

    // body: Center(
      //   child: Text(
      //     "Avazbek",
      //     style: TextStyle(fontFamily: "Pacifico"),
      //   ),
      // ),