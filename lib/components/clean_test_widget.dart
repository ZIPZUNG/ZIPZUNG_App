import 'package:flutter/material.dart';
import 'package:zipzung_app/screen/post_detail_screen.dart';

class CleanTestWidget extends StatefulWidget {
  final String name, description, expertise, belong;
  final int items;
  final double grade;

  const CleanTestWidget(
      {super.key,
      required this.name,
      required this.description,
      required this.expertise,
      required this.belong,
      required this.items,
      required this.grade});

  @override
  State<CleanTestWidget> createState() => _CleanTestWidgetState();
}

class _CleanTestWidgetState extends State<CleanTestWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PostDetailScreen(
                // something props
                ),
          ),
        );
      },
      child: Container(
        width: 350,
        height: 164,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFCCCCCC), width: 2),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(image: AssetImage('./assets/test_clean.png')),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 4),
                        width: 260,
                        height: 2,
                        color: const Color(0xFFCCCCCC))
                  ],
                )
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          '전문분야 | ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          widget.expertise,
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Text(
                          '연락 | ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          widget.belong,
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Text(
                          '매물보유수 | ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.items}개',
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Text(
                          '평점 | ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${widget.grade} / 5.0',
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
                const SizedBox(width: 4),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 70,
                      child: const Image(
                          image: AssetImage('./assets/test_house.png')),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 70,
                      child: const Image(
                          image: AssetImage('./assets/test_house2.png')),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 70,
                      child: const Image(
                          image: AssetImage('./assets/test_house3.png')),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
