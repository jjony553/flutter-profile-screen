import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        _buildHeaderAvatar(),
        SizedBox(
          width: 20,
        ),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 80,
      height: 80,
      child: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://assets.repress.co.kr/photos/2009ea104d2c842fed5461308d9f92d7/original.jpg"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "이지은",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "가수/배우",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Text(
          "카카오엔터",
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
