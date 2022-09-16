import 'package:flutter/material.dart';
import 'package:profile_screen/components/profile_count_info.dart';
import 'package:profile_screen/components/profile_drawer.dart';
import 'package:profile_screen/components/profile_header.dart';

import '../components/profile_buttons.dart';
import '../components/profile_tab.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(
                height: 20,
              ),
              ProfileHeader(),
              SizedBox(
                height: 20,
              ),
              ProfileCountInfo(),
              SizedBox(
                height: 20,
              ),
              ProfileButtons(),
            ]))
          ];
        },
        body: ProfileTab(),
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text(
        "Profile",
        style: const TextStyle(color: Colors.black),
      ),
      centerTitle: true,
    );
  }
}
