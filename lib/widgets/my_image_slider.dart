import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:milkman_interview/widgets/my_cached_network_image.dart';

class MyImageSlider extends StatefulWidget {
  final bool autoPlay;
  final bool showDots;
  final List<String> photoUrls;

  static const double height = 200;

  const MyImageSlider({
    Key? key,
    required this.autoPlay,
    required this.photoUrls,
    this.showDots = false,
  }) : super(key: key);

  @override
  _MyImageSliderState createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  int _currentIndex = 0;

  late int _photosLength;

  @override
  void initState() {
    super.initState();
    _photosLength = widget.photoUrls.length;
  }

  @override
  Widget build(BuildContext context) {
    if (_photosLength == 0) return const SizedBox.shrink();
    return Column(
      children: [
        CarouselSlider.builder(
          itemBuilder: (context, index, _) {
            return MyCachedNetworkImage(
              zoomToFit: true,
              url: widget.photoUrls[index],
              width: double.infinity,
              height: double.infinity,
            );
          },
          itemCount: _photosLength,
          options: CarouselOptions(
            height: MyImageSlider.height,
            // enlargeCenterPage: true,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: _photosLength != 1,
            reverse: false,
            autoPlay: widget.autoPlay,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 200),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, changeReason) {
              setState(() => _currentIndex = index);
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        if (widget.showDots)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int index = 0; index < _photosLength; index++)
                Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 2.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Theme.of(context).colorScheme.secondary
                        : Colors.grey,
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
