import 'package:flutter/material.dart';
import 'package:zipzung_app/components/post_widget.dart';

class SearchScreen extends StatefulWidget {
  final String category;

  const SearchScreen({super.key, required this.category});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Future initPrefs() async {
    // api request with widget.category
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: BackButton(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                ),
                width: 350,
                child: const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      hintText: '찾고 계신 공인중개사를 검색해주세요',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    textAlignVertical: TextAlignVertical.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < 4; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      color: const Color(0xFFCCCCCC),
                      width: 80,
                      height: 24,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < 5; i++)
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFCCCCCC),
                        borderRadius: BorderRadius.circular(99),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      width: 64,
                      height: 24,
                    ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 350,
                height: 2,
                color: const Color(0xFFCCCCCC),
              ),
              for (var i = 1; i <= 10; i++)
                const PostWidget(
                  name: '친절한 공인중개사',
                  description:
                      '안녕하세요 친절한 공인중개사입니다. OO시 OO구에서\n일해왔으며 그동안고객들의 니즈에 맞는 집들을 알아...',
                  expertise: '아파트',
                  belong: '공인중개사',
                  items: 100,
                  grade: 4.5,
                ),
            ],
          ),
        ),
      ),
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
        currentIndex: 1,
      ),
    );
  }
}
