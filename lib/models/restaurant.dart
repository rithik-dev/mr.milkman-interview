class Restaurant {
  final String id;
  final String name;
  final double rating;
  final List<String> images;
  final bool isPureVeg;
  final String subtitle;
  final String costForOneText;
  final String deliveryTime;
  final String discount;
  final String proDiscount;

  const Restaurant({
    required this.id,
    required this.name,
    required this.rating,
    required this.images,
    required this.subtitle,
    required this.isPureVeg,
    required this.costForOneText,
    required this.deliveryTime,
    required this.discount,
    required this.proDiscount,
  });

  static const all = [
    Restaurant(
      id: '1',
      name: "Domino's Pizza",
      rating: 4.2,
      isPureVeg: false,
      subtitle: 'Pizza, Fast Food, Desserts',
      costForOneText: '₹350 for one',
      deliveryTime: '30 mins',
      discount: '50% OFF',
      proDiscount: '10% OFF',
      images: [
        'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        'https://images.unsplash.com/photo-1594007654729-407eedc4be65?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=728&q=80',
        'https://images.unsplash.com/photo-1571066811602-716837d681de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=536&q=80',
      ],
    ),
    Restaurant(
      id: '2',
      name: "The Cake Cafe",
      rating: 3.9,
      isPureVeg: true,
      subtitle: 'Cakes, Bakery',
      costForOneText: '₹150 for one',
      deliveryTime: '45 mins',
      discount: '15% OFF',
      proDiscount: '8% OFF',
      images: [
        'https://images.unsplash.com/photo-1588195538326-c5b1e9f80a1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80',
        'https://images.unsplash.com/photo-1562440499-64c9a111f713?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        'https://images.unsplash.com/photo-1535141192574-5d4897c12636?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
        'https://images.unsplash.com/photo-1621303837174-89787a7d4729?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80',
      ],
    ),
    Restaurant(
      id: '3',
      name: "Burgerama",
      rating: 4.6,
      subtitle: 'Burger, Fast Food, Beverages',
      costForOneText: '₹200 for one',
      deliveryTime: '20 mins',
      isPureVeg: false,
      discount: '20% OFF',
      proDiscount: '12% OFF',
      images: [
        'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
        'https://images.unsplash.com/photo-1550547660-d9450f859349?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
        'https://images.unsplash.com/photo-1603064752734-4c48eff53d05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
        'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
      ],
    ),
  ];

  static const recommended = all;
}
