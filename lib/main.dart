import 'package:assignment_one/reducers/page_indicator_reducer.dart';
import 'package:assignment_one/utils/colors.dart';
import 'package:assignment_one/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<int>(
    pageIndexReducer,
    initialState: 0,
  );

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<int> store;

  const MyApp({required this.store});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Bg1,
      ),
      home: StoreProvider<int>(
        store: store,
        child: const HomeScreen(),
      ),
    );
  }
}
