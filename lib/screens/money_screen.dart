import 'package:flutter/material.dart';

class MoneyScreen extends StatelessWidget {
  static const id = 'MoneyScreen';

  const MoneyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'MoneyScreen',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
