import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SecondScr extends StatelessWidget {
  final GoogleSignInAccount? user;
  const SecondScr({
    super.key,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second screen'),
      ),
      body: Column(
        children: [
          Text('second screen'),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user?.photoUrl ?? ''),
            ),
            title: Text(user?.displayName ?? ''),
            subtitle: Text(user?.email ?? ''),
          ),
        ],
      ),
    );
  }
}
