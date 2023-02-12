import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zipzung_app/screen/life_screen.dart';
import 'package:zipzung_app/screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              Container(
                width: 110,
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
                  child: const Text(
                    '중개사',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: 62),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LifeScreen(),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: const Center(
                  child: Text(
                    '생활',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                '어떤 중계사를 찾고 계신가요?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
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
                    child: Container(
                      width: 150,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/apartment.svg',
                            fit: BoxFit.scaleDown,
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            '아파트',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/house.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          '주거지',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/commerce.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          '상업지',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/industry.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          '공업지',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/special.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          '특수 부동산',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const SizedBox(
                    width: 150,
                    height: 90,
                  ),
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
