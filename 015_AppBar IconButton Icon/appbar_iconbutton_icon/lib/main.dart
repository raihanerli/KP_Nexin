
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    ));

double collapsableHeight = 0.0;
Color selected = const Color(0xffffffff);
Color notSelected = const Color(0x0affffff);

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          AnimatedContainer(
            margin: const EdgeInsets.only(top: 79.0),
            duration: const Duration(milliseconds: 375),
            curve: Curves.ease,
            height: (width < 800.0) ? collapsableHeight : 0.0,
            width: double.infinity,
            color: const Color(0xff121212),
            child: SingleChildScrollView(
              child: Column(
                children: navBarItems,
              ),
            ),
          ),
          Container(
            color: const Color(0xff121212),
            height: 80.0,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'NavBar',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Color(0xffffffff),
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (width < 800.0) {
                      return NavBarButton(
                        onPressed: () {
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 240.0;
                            });
                          } else if (collapsableHeight == 24.0) {
                            setState(() {
                              collapsableHeight = 240.0;
                            });
                          }
                        },
                      );
                    } else {
                      return Row(
                        children: navBarItems,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> navBarItems = [
  const NavBarItem(
    text: 'About',
  ),
  const NavBarItem(
    text: 'Explore',
  ),
  const NavBarItem(
    text: 'Search',
  ),
  const NavBarItem(
    text: 'Help',
  ),
];

class NavBarItem extends StatefulWidget {
  final String text;
  const NavBarItem({super.key, 
    required this.text,
  });

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {},
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.text,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function onPressed;
  const NavBarButton({super.key, 
    required this.onPressed,
  });

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xcfffffff),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            setState(() {
              widget.onPressed();
            });
          },
          child: const Icon(
            Icons.menu,
            size: 30.0,
            color: Color(0xcfffffff),
          ),
        ),
      ),
    );
  }
}
