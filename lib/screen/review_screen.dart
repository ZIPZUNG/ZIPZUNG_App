import 'package:flutter/material.dart';
import 'package:zipzung_app/screen/post_detail_screen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 36,
                    child: TextButton(
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
                                const PostDetailScreen(),
                            transitionDuration: Duration.zero,
                            reverseTransitionDuration: Duration.zero,
                          ),
                        );
                      },
                      child: const Text(
                        '프로필',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
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
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const ReviewScreen(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    child: Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 2)),
                        ),
                        child: const Text(
                          '서비스 후기',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 22),
                    width: 210,
                    height: 36,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      '후기 작성하기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    Text(
                      '서비스 후기 (37)',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              if (isClickDetail)
                for (var i = 1; i <= 12; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset('./assets/test_.png', width: 70),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '사장님이 너무 친절하시네요',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                                '공인중개사 업계 베테랑이시라고\n소문 들었는데 정말 말 그대로 너\n무 친절하고 서비스도 좋네요.')
                          ],
                        )
                      ],
                    ),
                  ),
              if (!isClickDetail)
                for (var i = 1; i <= 3; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset('./assets/test_.png', width: 70),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '사장님이 너무 친절하시네요',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                                '공인중개사 업계 베테랑이시라고\n소문 들었는데 정말 말 그대로 너\n무 친절하고 서비스도 좋네요.')
                          ],
                        )
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
                      isClickDetail ? '서비스 후기 닫기' : '서비스 후기 더보기',
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
