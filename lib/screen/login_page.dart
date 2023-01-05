import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_bd/screen/signup_page.dart';

import '../utls/widgets/custom_text_field.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../widgets/cutom_text_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _idController = TextEditingController();
    final _passController = TextEditingController();

    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: NavBar(),
      appBar: AppBar(
        title: Text(
          'Login',
          style: GoogleFonts.nunito(),
        ),
        centerTitle: true,
        // backgroundColor: Colors.deepPurple.shade300,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green.shade100),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.person,
                        size: 130,
                        color: Colors.deepPurpleAccent.shade100.withOpacity(.6),
                      ),
                    ),
                  ),
                ),
                CTF(
                    controller: _idController,
                    hint: 'Enter Id',
                    icon: Icons.person),
                SizedBox(height: 20),
                CTFP(
                    controller: _passController,
                    hint: 'Enter Pass',
                    icon: Icons.lock),
                SizedBox(height: 20),
                CB(
                  text: 'Login',
                  onTap: () {},
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        )),
                    child: Text(
                      'Forgot PassWord?',
                      style: GoogleFonts.nunito(
                          color: Colors.deepPurpleAccent, fontSize: 18),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have account?',
                        style: GoogleFonts.nunito(fontSize: 16)),
                    SizedBox(width: 10),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            )),
                        child: Text(
                          'creat a new account',
                          style: GoogleFonts.nunito(
                              color: Colors.deepPurpleAccent, fontSize: 18),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CFAB extends StatelessWidget {
  const CFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.deepPurpleAccent.shade100,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ));
      },

      //params
    );
  }
}

class CB extends StatelessWidget {
  const CB({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: Colors.deepPurpleAccent.shade100,
        height: 60,
        width: double.infinity,
        child: MaterialButton(
            onPressed: onTap,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  text.toString(),
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, letterSpacing: .2),
                ),
              ),
            )),
      ),
    );
  }
}

List<IconData> iconList = [
  Icons.person,
  Icons.person,
  Icons.person,
  Icons.person,
];
int _bottomNavIndex = 0;

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      activeColor: Colors.deepPurpleAccent.shade100,
      // splashColor: Colors.amber,
      borderColor: Colors.green,
      splashColor: Colors.greenAccent,
      // iconSize: 10,
      // inactiveColor: Colors.red,
      icons: iconList,
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      onTap: (index) {
        setState(() {
          _bottomNavIndex = index;
        });
      },
      //other params
    );
  }
}
