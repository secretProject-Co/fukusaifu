import 'package:flutter/material.dart';

class SignUpUploadPhoto extends StatefulWidget {
  const SignUpUploadPhoto({Key? key}) : super(key: key);

  @override
  State<SignUpUploadPhoto> createState() => _SignUpUploadPhotoState();
}

class _SignUpUploadPhotoState extends State<SignUpUploadPhoto> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Upload Photo"),
          ],
        ),
      ),
    );
  }
}
