import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:assignment_one/reducers/page_indicator_reducer.dart';
import 'package:assignment_one/views/home/pages/first_screen.dart';
import 'package:assignment_one/views/home/pages/forth_screen.dart';
import 'package:assignment_one/views/home/pages/sec_screen.dart';
import 'package:assignment_one/views/home/pages/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../universal_widgets/custom_app_bar.dart';
import '../../utils/colors.dart';
import 'animation/pageview_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [
    FirstScreen(),
    SecScreen(),
    ThirdScreen(),
    ForthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Bg2,
        centerTitle: true,
        title: CustomAppBar(),
      ),
      body: Row(
        children: [
          Flexible(
            flex: 15,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 20.0,
                bottom: 20.0,
              ),
              child: TransformerPageView(
                loop: true,
                scrollDirection: Axis.vertical,
                curve: Curves.easeInBack,
                itemCount: _pages.length,
                transformer: new MyTransformer(),
                onPageChanged: (index) {
                  StoreProvider.of<int>(context)
                      .dispatch(ChangePageIndexAction(index ?? 0));
                },
                itemBuilder: (BuildContext context, int index) {
                  return _pages[index];
                },
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: StoreConnector<int, int>(
              converter: (store) => store.state,
              builder: (context, pageIndex) {
                return AnimatedSmoothIndicator(
                  activeIndex: pageIndex,
                  count: _pages.length,
                  axisDirection: Axis.vertical,
                  effect: WormEffect(
                    dotWidth: 10,
                    dotHeight: 10,
                    dotColor: Bg4,
                    activeDotColor: borderC,
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Bg3,
        selectedItemColor: borderC,
        onTap: (index) {
          setState(() {
            // _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Bg2,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Bg2,
            icon: Icon(Icons.question_answer),
            label: 'Questions',
          ),
          BottomNavigationBarItem(
            backgroundColor: Bg2,
            icon: Icon(Icons.report_rounded),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            backgroundColor: Bg2,
            icon: Icon(Icons.person),
            label: 'You',
          ),
        ],
      ),
    );
  }
}
