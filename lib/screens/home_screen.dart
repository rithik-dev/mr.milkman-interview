import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:milkman_interview/screens/delivery_screen.dart';
import 'package:milkman_interview/screens/dining_screen.dart';
import 'package:milkman_interview/screens/money_screen.dart';
import 'package:milkman_interview/screens/offers_screen.dart';
import 'package:milkman_interview/screens/zpl_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'HomeScreen';

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIdx = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
            content: Text('Tap the back button again to exit the app!'),
          ),
          child: IndexedStack(
            index: _selectedIdx,
            children: const [
              DiningScreen(),
              DeliveryScreen(),
              ZplScreen(),
              OffersScreen(),
              MoneyScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) => setState(() => _selectedIdx = idx),
          currentIndex: _selectedIdx,
          items: const [
            BottomNavigationBarItem(
              label: 'Dining',
              icon: Icon(Icons.ac_unit),
            ),
            BottomNavigationBarItem(
              label: 'Delivery',
              icon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
              label: 'ZPL',
              icon: Icon(Icons.remove),
            ),
            BottomNavigationBarItem(
              label: 'Offers',
              icon: Icon(Icons.access_alarm_sharp),
            ),
            BottomNavigationBarItem(
              label: 'Money',
              icon: Icon(Icons.accessibility_new_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
