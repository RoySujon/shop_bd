// import 'package:demo_reference/screen/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_bd/utls/widgets/Custom_button.dart';

import '../utls/widgets/custom_text_field.dart';
// import '../widgets/cutom_text_form.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _firstPassController = TextEditingController();
  final _confirmPassController = TextEditingController();
  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: CFAB(),
      // bottomNavigationBar: NavBar(),
      appBar: AppBar(
        // backgroundColor: Colors.deepPurple.shade300,
        title: Text(
          'Signup Page',
          style: GoogleFonts.nunito(),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Row(
                children: [
                  Text('Select Title'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CTF(
                    controller: _nameController,
                    hint: 'Full Name',
                    icon: Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CTF(
                    controller: _emailController,
                    hint: 'Email id',
                    icon: Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CTF(
                    controller: _mobileController,
                    hint: 'Mobile No',
                    icon: Icons.phone),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CTFP(
                    controller: _firstPassController,
                    hint: 'Input Password',
                    icon: Icons.lock),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CTFP(
                    controller: _confirmPassController,
                    hint: 'Confirm Password',
                    icon: Icons.lock),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(
                  text: 'Create account',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have account?',
                        style: GoogleFonts.nunito(fontSize: 16)),
                    SizedBox(width: 10),
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Text(
                          'Login',
                          style: GoogleFonts.nunito(
                              color: Colors.deepPurpleAccent, fontSize: 18),
                        )),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
