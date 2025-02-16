import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_challenge_05_03/constants/app_theme.dart';
import 'package:nomad_challenge_05_03/constants/gaps.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor(context),
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FaIcon(FontAwesomeIcons.globe,
                  color: AppTheme.iconColor(context), size: 24),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: AppTheme.iconColor(context),
                    size: 24,
                  ),
                  Gaps.h32,
                  FaIcon(
                    FontAwesomeIcons.bars,
                    color: AppTheme.iconColor(context),
                    size: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //프로필 텍스트 + 사진
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yoon",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gaps.v16,
                      Row(
                        children: [
                          Text(
                            "Yoon_mobbin",
                          ),
                          Gaps.h8,
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Text(
                              "threads.net",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Gaps.h16,
                      Text(
                        "Plant enthusiast!",
                      ),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            //팔로우
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150.0,
                    height: 60.0,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 16,
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 20,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gaps.v16,
                  Text("2 followers"),
                ],
              ),
            ),
            //버튼
          ],
        ),
      ),
    );
  }
}
