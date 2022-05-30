import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  static const id = 'OffersScreen';

  const OffersScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'OffersScreen',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
