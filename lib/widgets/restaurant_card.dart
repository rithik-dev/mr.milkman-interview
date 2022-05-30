import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:milkman_interview/models/restaurant.dart';
import 'package:milkman_interview/widgets/my_cached_network_image.dart';
import 'package:milkman_interview/widgets/my_image_slider.dart';

class RestaurantCard extends StatelessWidget {
  static const id = 'RestaurantCard';

  final Restaurant restaurant;

  const RestaurantCard(
    this.restaurant, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyContainer(
      color: Colors.white,
      borderRadius: 10,
      elevation: 15,
      padding: 0,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyImageSlider(
                autoPlay: true,
                showDots: false,
                photoUrls: restaurant.images,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            restaurant.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        EasyContainer(
                          margin: 0,
                          customPadding: const EdgeInsets.all(5),
                          elevation: 0,
                          color: Colors.green[800],
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                restaurant.rating.toStringAsFixed(1),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              const Icon(
                                Icons.star,
                                size: 13,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          restaurant.subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          restaurant.costForOneText,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 14,
                          color: Colors.green[800],
                        ),
                        const SizedBox(width: 2.5),
                        Text(
                          restaurant.deliveryTime,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(' • '),
                        Text(
                          restaurant.discount,
                          style: const TextStyle(
                            color: Colors.indigo,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(' • '),
                        Text(
                          'Pro ${restaurant.proDiscount}',
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (restaurant.isPureVeg)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Material(
                color: Colors.green[800]!.withOpacity(0.9),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'PURE VEG RESTAURANT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class RestaurantCardVertical extends StatelessWidget {
  static const id = 'RestaurantCard';

  final Restaurant restaurant;

  const RestaurantCardVertical(
    this.restaurant, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyContainer(
      color: Colors.white,
      borderRadius: 10,
      height: 270,
      customMargin: const EdgeInsets.only(bottom: 15),
      width: 175,
      elevation: 10,
      padding: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCachedNetworkImage(
            zoomToFit: true,
            width: double.infinity,
            height: 150,
            url: restaurant.images[0],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        restaurant.name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    EasyContainer(
                      margin: 0,
                      padding: 3,
                      elevation: 0,
                      color: Colors.green[800],
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            restaurant.rating.toStringAsFixed(1),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          const Icon(
                            Icons.star,
                            size: 11,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 14,
                      color: Colors.green[800],
                    ),
                    const SizedBox(width: 2.5),
                    Text(
                      restaurant.deliveryTime,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      Icons.money,
                      size: 14,
                      color: Colors.pink,
                    ),
                    const SizedBox(width: 2.5),
                    Text(
                      restaurant.costForOneText,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: double.infinity,
            child: Material(
              color: Colors.indigo.withOpacity(0.25),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.ac_unit,
                      size: 15,
                      color: Colors.indigo,
                    ),
                    const SizedBox(width: 2.5),
                    Text(
                      restaurant.discount,
                      style: const TextStyle(
                        color: Colors.indigo,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
