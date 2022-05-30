import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  static const id = 'DeliveryScreen';

  const DeliveryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'DeliveryScreen',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
