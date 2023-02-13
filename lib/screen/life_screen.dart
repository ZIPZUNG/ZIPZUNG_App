import 'package:flutter/material.dart';
import 'package:zipzung_app/screen/home_screen.dart';
import 'package:zipzung_app/screen/search_screen.dart';

class LifeScreen extends StatelessWidget {
  const LifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('./assets/test.png')),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          const HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
                child: const Text(
                  '중개사',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(width: 62),
              Container(
                height: 42,
                decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.black, width: 2)),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: null,
                  child: const Center(
                    child: Text(
                      '생활',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 40),
                child: const Text(
                  '어떤 서비스를 찾고 계신가요?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SearchScreen(category: 'apartment'),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            for (var i = 1; i <= 4; i++)
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SearchScreen(
                                                  category: 'clean'),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(6),
                                        child: Image.asset('./assets/test_.png',
                                            width: 66),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text(
                                    '서비스명',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            for (var i = 1; i <= 4; i++)
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('./assets/test_.png',
                                          width: 66),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text(
                                    '서비스명',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            for (var i = 1; i <= 2; i++)
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('./assets/test_.png',
                                          width: 66),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text(
                                    '서비스명',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                NetworkImage(
                    'https://media.discordapp.net/attachments/1036162758875549761/1074188596908662894/image.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                NetworkImage(
                    'https://media.discordapp.net/attachments/1036162758875549761/1074188911905091684/image.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                NetworkImage(
                    'https://media.discordapp.net/attachments/1036162758875549761/1074187480011640873/image.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                NetworkImage(
                    'https://media.discordapp.net/attachments/1036162758875549761/1074189198208278669/image.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                NetworkImage(
                    'https://media.discordapp.net/attachments/1036162758875549761/1074189980840235028/image.png'),
              ),
              label: ''),
        ],
        currentIndex: 2,
      ),
    );
  }
}
