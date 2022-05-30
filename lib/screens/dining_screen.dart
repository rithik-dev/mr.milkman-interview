import 'package:flutter/material.dart';
import 'package:milkman_interview/app_config.dart';
import 'package:milkman_interview/models/restaurant.dart';
import 'package:milkman_interview/widgets/restaurant_card.dart';

class DiningScreen extends StatelessWidget {
  static const id = 'DiningScreen';

  const DiningScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: const [
            _RecommendedForYou(),
            _AllRestaurants(),
          ],
        ),
      ),
    );
  }
}

class _RecommendedForYou extends StatelessWidget {
  const _RecommendedForYou({
    Key? key,
  }) : super(key: key);

  static const _restaurants = Restaurant.recommended;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppConfig.of(context).appDisplayName),
            const Text(
              'Recommended for you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextButton(
              child: Text(
                'see all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 15,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          height: 275,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => const SizedBox(width: 15),
            itemBuilder: (context, idx) => Center(
              child: RestaurantCardVertical(_restaurants[idx]),
            ),
            itemCount: _restaurants.length,
          ),
        ),
      ],
    );
  }
}

class _AllRestaurants extends StatelessWidget {
  const _AllRestaurants({
    Key? key,
  }) : super(key: key);

  static const _restaurants = Restaurant.all;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'All restaurants around you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextButton(
              child: Text(
                'see all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 15,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, idx) => RestaurantCard(_restaurants[idx]),
          itemCount: _restaurants.length,
        ),
      ],
    );
  }
}
