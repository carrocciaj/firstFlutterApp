import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class _VerifyEmailView extends StatefulWidget {
  const _VerifyEmailView({super.key});

  @override
  State<_VerifyEmailView> createState() => __VerifyEmailViewState();
}

class __VerifyEmailViewState extends State<_VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Verify Email"),
      ),
      body: Column(children: [
          const Text('Please Verify Email'),
          TextButton(onPressed: () async {
            final user = FirebaseAuth.instance.currentUser;
            await user?.sendEmailVerification();
          }, 
            child: const Text('Send email verification')
            )
          ],  
        ),
    );
  }
}