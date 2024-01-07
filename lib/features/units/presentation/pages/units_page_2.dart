import 'package:flutter/material.dart' hide AppBar;
import 'package:ok_app/config/color_theme.dart';
import 'package:ok_app/features/units/presentation/widgets/units_item_widget.dart';

class UnitsPage2 extends StatelessWidget {
  const UnitsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ColorTheme.mainBarBackgroundFrom,
            ColorTheme.mainBarBackgroundTo,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              // const AppBar(title: 'Ok App', imagePath: ''),
              // SliverPersistentHeader(
              //   delegate: HeaderAppBar(expandedHeight: 200),
              //   pinned: true,
              // ),
              /*SliverAppBar(
                backgroundColor: Colors.transparent,
                pinned: true,
                // title: Text('OK App'),
                leading: const Text('lead'),
                actions: const [
                  Text('act'),
                ],
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                  // title: const Text(
                  //   'Murphy',
                  //   style: TextStyle(color: Colors.black),
                  // ),
                  title: LayoutBuilder(builder: (context, constraints) {
                    log(constraints.toString());
                    return Text(
                      'My title',
                      style: TextStyle(
                        color: constraints.maxHeight > 40
                            ? Colors.black
                            : Colors.black,
                      ),
                    );
                  }),
                  background: LayoutBuilder(builder: (context, constraints) {
                    return Container(
                      color: constraints.maxHeight > 100
                          ? Colors.transparent
                          : Colors.white,
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.red,
                            child: const Text('123'),
                          ),
                        ],
                      ),
                    );
                  }),
                  // background: Image.asset(
                  //   Constants.imagesRedMurphyBook,
                  //   fit: BoxFit.cover,
                  // ),
                ),
                // bottom: PreferredSize(
                //   preferredSize: const Size.fromHeight(0.0),
                //   child: Transform.translate(
                //     offset: const Offset(0, -50),
                //     child: OutlinedButton(
                      shape: StadiumBorder(),
                      // child: Text("Click Here"),
                      // onPressed: () {},
                    // ),
                  // ),
                // ),
              ),*/
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return UnitsItemWidget(index: index);
                  },
                  childCount: 30,
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: const NavBar(),
      ),
    );
  }
}
