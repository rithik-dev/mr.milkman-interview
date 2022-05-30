import 'package:flutter/material.dart';

class ZplScreen extends StatelessWidget {
  static const id = 'ZplScreen';

  const ZplScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'ZplScreen',
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
