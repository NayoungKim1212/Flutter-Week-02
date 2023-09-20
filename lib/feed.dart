import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // 부축 기준으로 정렬
      children: [
        // CilpRRect 를 통해 이미지에 곡선 border 생성
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          // 이미지
          child: Image.network(
            'https://cdn2.thecatapi.com/images/6bt.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          // 해당 위젯이 차지할 수 있는 공간을 최대한 차지
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 주축 기준으로 정렬
            children: [
              Text(
                'M1 아이패드 프로 11형(3세대) 와이파이 128G 팝니다.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis, // 지정된 사이즈를 넘어가면 overflow
              ),
              SizedBox(height: 2),
              Text(
                '봉천동 · 6분 전',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '100만원',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Spacer(), // 자기가 차지할수 있는 공간 최대한 차지하는 나머지 요소들을 밀어내는 위젯
                  GestureDetector(
                    // 아이콘을 눌렀을 때 특정 동작을 하게끔 제스처들을 인식
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart,
                          color: Colors.black54,
                          size: 16,
                        ),
                        Text(
                          '1',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
