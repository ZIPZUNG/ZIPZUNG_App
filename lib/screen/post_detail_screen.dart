import 'package:flutter/material.dart';

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({super.key});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  bool isClickDetail = false;

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
            children: [
              const SizedBox(height: 20),
              Container(
                width: 350,
                height: 140,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                color: const Color(0xFFDEE2EC),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage('./assets/test_profile.png'),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: const Text(
                            '친절한 공인중개사',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          '32개의 후기',
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            for (var i = 1; i <= 3; i++)
                              Container(
                                width: 60,
                                height: 24,
                                margin: const EdgeInsets.only(right: 6),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: const Text(
                                  '#강남구',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 14),
              for (var i = 1; i <= 4; i++)
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 4, 0, 4),
                  child: Row(
                    children: const [
                      Text(
                        '전문분야 | ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'widget.expertise',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 4, 0, 4),
                child: Row(
                  children: const [
                    Text(
                      '담당자 매물 바로가기',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 4, 0, 4),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 7),
                      child: Image.asset('./assets/youtube.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      child: Image.asset('./assets/instagram.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      child: Image.asset('./assets/facebook.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      child: Image.asset('./assets/image.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    Text(
                      '소개',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      isClickDetail
                          ? '안녕하세요 친절한 공인중개사입니다. OO시 \nOO구에서 4년간 일해왔으며 그동안 고객들의 \n니즈에 맞는 집들을 같이 함께 알아가며 만족스러운 \n중개를 도와드...is simply dummy text of the \nprinting and typesetting industry. Lorem \nIpsum has been the industry standard dummy \ntext ever since the 1500s, when an unknown\nprinter took a galley of type and scrambled\nit to make a type specimen book. It has\nsurvived not only five centuries, but also the\nleap into electronic typesetting, remaining\nessentially unchanged. It was popularised \nin the 1960s with the release of Letraset \nsheets containing Lorem Ipsum passages,\n and more recently with desktop publishing\nsoftware like Aldus PageMaker including\nversions of Lorem Ipsum.'
                          : '안녕하세요 친절한 공인중개사입니다. OO시 \nOO구에서 4년간 일해왔으며 그동안 고객들의 \n니즈에 맞는 집들을 같이 함께 알아가며 만족스러운...',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isClickDetail = !isClickDetail;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isClickDetail ? '기본정보 닫기' : '기본정보 더보기',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                        isClickDetail
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                        size: 30),
                  ],
                ),
              )
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
