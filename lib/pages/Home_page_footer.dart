import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Check the width of the screen to determine the layout
            bool isMobile = constraints.maxWidth < 600;
            bool isTablet = constraints.maxWidth >= 600 && constraints.maxWidth < 1200;
            bool isDesktop = constraints.maxWidth >= 1200;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: isMobile ? 300 : (isTablet ? 400 : 446),
                  height: isMobile ? 100 : (isTablet ? 120 : 127),
                  child: Text(
                    'Contact US 7972391849\nEmail : samaystartup@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? 18 : (isTablet ? 22 : 24),
                      fontFamily: 'Roboto Slab',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png', isMobile, isTablet),
                    buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg', isMobile, isTablet),
                    buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png', isMobile, isTablet),
                    buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/en/6/60/Twitter_Logo_as_of_2021.svg', isMobile, isTablet),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: isMobile ? 200 : (isTablet ? 220 : 236),
                  height: isMobile ? 50 : (isTablet ? 55 : 61),
                  child: Text(
                    'copyright@samay.live',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? 14 : (isTablet ? 16 : 18),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 1.0,
                      letterSpacing: isMobile ? 0.3 : 0.36,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildContainerWithLogo(BuildContext context, String logoUrl, bool isMobile, bool isTablet) {
    double containerSize = isMobile ? 60 : (isTablet ? 80 : 100);
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Image.network(
          logoUrl,
          width: isMobile ? 30 : (isTablet ? 40 : 50),
          height: isMobile ? 30 : (isTablet ? 40 : 50),
        ),
      ),
    );
  }
}
