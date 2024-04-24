class Place {
  final String image;
  final String countryName;
  final String description;
  final List<String> otherImages;

  Place({
    required this.image,
    required this.countryName,
    required this.description,
    required this.otherImages,
  });
}

List<Map<String, dynamic>> placesData = [
  {
    'image': 'https://th.bing.com/th/id/OIP.Sat0SCYmmTvPyZwoqPgV7wHaEK?rs=1&pid=ImgDetMain',
    'countryName': 'Germany',
    'description': 'Germany, a land of rich history and diverse culture, offers stunning landscapes, vibrant cities, and iconic landmarks like the Berlin Wall. Explore castles, forests, and bustling markets for an unforgettable experience',
    'otherImages': [
      'https://th.bing.com/th/id/OIP.Sat0SCYmmTvPyZwoqPgV7wHaEK?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.Sat0SCYmmTvPyZwoqPgV7wHaEK?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.Sat0SCYmmTvPyZwoqPgV7wHaEK?rs=1&pid=ImgDetMain',
    ],
  },
  {
    'image': 'https://th.bing.com/th/id/OIP.nt4iQR4zCBTtxMUjJyh-7QHaEz?rs=1&pid=ImgDetMain',
    'countryName': 'Russia',
    'description': 'Russia, the largest country on Earth, boasts a fascinating blend of history, architecture, and natural beauty. From the majestic Kremlin in Moscow to the vast expanses of Siberia, discover a land of contrasts and intrigue',
    'otherImages': [
      'https://th.bing.com/th/id/OIP.nt4iQR4zCBTtxMUjJyh-7QHaEz?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.nt4iQR4zCBTtxMUjJyh-7QHaEz?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.nt4iQR4zCBTtxMUjJyh-7QHaEz?rs=1&pid=ImgDetMain',
    ],
  },{
    'image': 'https://th.bing.com/th/id/OIP.yQV9YN97q7-pD-MDLHFaJAHaEK?rs=1&pid=ImgDetMain',
    'countryName': 'India',
    'description': 'India, a vibrant tapestry of cultures, traditions, and landscapes, beckons with its ancient temples, bustling streets, and serene backwaters. From the iconic Taj Mahal to the spiritual retreats of the Himalayas, experience a land of wonders',
    'otherImages': [
      'https://th.bing.com/th/id/OIP.yQV9YN97q7-pD-MDLHFaJAHaEK?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.yQV9YN97q7-pD-MDLHFaJAHaEK?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.yQV9YN97q7-pD-MDLHFaJAHaEK?rs=1&pid=ImgDetMain',
    ],
  },

];

List<Place> places = placesData.map((place) {
  return Place(
    image: place['image'],
    countryName: place['countryName'],
    description: place['description'],
    otherImages: List<String>.from(place['otherImages']),
  );
}).toList();
