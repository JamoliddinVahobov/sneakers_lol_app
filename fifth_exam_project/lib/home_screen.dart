import 'package:fifth_exam_project/bottomnavigationbar.dart';
import 'package:fifth_exam_project/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final List<Map<String, dynamic>> sneakers = [
    {
      "color": Colors.blueAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1608.jpg?size=626&ext=jpg",
      "name": "Blue",
      "description": "A pair",
      "price": 220.00,
      "textdescription":
          "A stylish blue sneaker that offers comfort for all-day wear, perfect for casual or sporty outfits."
    },
    {
      "color": Colors.lightBlueAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1641.jpg?size=626&ext=jpg",
      "name": "White",
      "description": "A pair",
      "price": 230.00,
      "textdescription":
          "Classic white sneakers designed for maximum breathability and modern style."
    },
    {
      "color": Colors.yellowAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1608.jpg?size=626&ext=jpg",
      "name": "Yellow",
      "description": "A pair",
      "price": 210.00,
      "textdescription":
          "Bold yellow sneakers that add a pop of color while keeping you comfortable all day."
    },
    {
      "color": Colors.pinkAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1650.jpg?size=626&ext=jpg",
      "name": "Pink",
      "description": "A pair",
      "price": 240.00,
      "textdescription":
          "Trendy pink sneakers perfect for anyone who wants to stand out in both comfort and style."
    },
    {
      "color": Colors.greenAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1648.jpg?size=626&ext=jpg",
      "name": "Green",
      "description": "A pair",
      "price": 250.00,
      "textdescription":
          "Vibrant green sneakers designed with comfort and sustainability in mind for daily wear."
    },
    {
      "color": Colors.orangeAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1654.jpg?size=626&ext=jpg",
      "name": "Orange",
      "description": "A pair",
      "price": 200.00,
      "textdescription":
          "Eye-catching orange sneakers that bring boldness and comfort to every step."
    },
    {
      "color": Colors.redAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1638.jpg?size=626&ext=jpg",
      "name": "Red",
      "description": "A pair",
      "price": 260.00,
      "textdescription":
          "Vibrant red sneakers perfect for making a bold statement in both style and comfort."
    },
    {
      "color": Colors.purpleAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1636.jpg?size=626&ext=jpg",
      "name": "Purple",
      "description": "A pair",
      "price": 270.00,
      "textdescription":
          "Luxurious purple sneakers that combine elegance with athletic performance."
    },
    {
      "color": Colors.deepPurpleAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1629.jpg?size=626&ext=jpg",
      "name": "Deep Purple",
      "description": "A pair",
      "price": 280.00,
      "textdescription":
          "Sophisticated deep purple sneakers for those who prefer subtle yet stylish footwear."
    },
    {
      "color": Colors.tealAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1618.jpg?size=626&ext=jpg",
      "name": "Teal",
      "description": "A pair",
      "price": 220.00,
      "textdescription":
          "Unique teal sneakers that blend boldness with everyday comfort and versatility."
    },
    {
      "color": Colors.limeAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1619.jpg?size=626&ext=jpg",
      "name": "Lime",
      "description": "A pair",
      "price": 210.00,
      "textdescription":
          "Bright lime sneakers that add energy to your outfit while keeping you comfortable."
    },
    {
      "color": Colors.amberAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1624.jpg?size=626&ext=jpg",
      "name": "Amber",
      "description": "A pair",
      "price": 230.00,
      "textdescription":
          "Warm amber sneakers that offer comfort and style for any casual look."
    },
    {
      "color": Colors.indigoAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1640.jpg?size=626&ext=jpg",
      "name": "Indigo",
      "description": "A pair",
      "price": 240.00,
      "textdescription":
          "Confident indigo sneakers that support every step with style and functionality."
    },
    {
      "color": Colors.cyanAccent,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1606.jpg?size=626&ext=jpg",
      "name": "Cyan",
      "description": "A pair",
      "price": 250.00,
      "textdescription":
          "Cool cyan sneakers for a fresh look that pairs with various casual outfits."
    },
    {
      "color": Colors.brown,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1633.jpg?size=626&ext=jpg",
      "name": "Brown",
      "description": "A pair",
      "price": 260.00,
      "textdescription":
          "Reliable brown sneakers offering both sturdy design and everyday wearability."
    },
    {
      "color": Colors.grey,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1655.jpg?size=626&ext=jpg",
      "name": "Grey",
      "description": "A pair",
      "price": 220.00,
      "textdescription":
          "Versatile grey sneakers designed for style and comfort with any outfit."
    },
    {
      "color": Colors.green,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1649.jpg?size=626&ext=jpg",
      "name": "Black",
      "description": "A pair",
      "price": 280.00,
      "textdescription":
          "Sleek black sneakers that offer minimalist style with maximum comfort."
    },
    {
      "color": Colors.yellow,
      "imageUrl":
          "https://img.freepik.com/free-psd/running-shoes-sneakers-transparent-background_84443-1651.jpg?size=626&ext=jpg",
      "name": "Yellow",
      "description": "A pair",
      "price": 230.00,
      "textdescription":
          "Bright yellow sneakers that bring vibrancy to your look while ensuring comfort."
    }
  ];

  @override
  Widget build(BuildContext context) {
    // Filter sneakers based on the search query
    List<Map<String, dynamic>> filteredSneakers = sneakers
        .where((sneaker) => sneaker['name']
            .toString()
            .toLowerCase()
            .contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 180,
        flexibleSpace: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 20),
              child: Text(
                'Nike shoe store',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Search by color',
                    hintStyle: TextStyle(color: Colors.grey[600], fontSize: 20),
                    prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.custom(
          gridDelegate: SliverWovenGridDelegate.count(
            pattern: [
              const WovenGridTile(1),
              const WovenGridTile(
                10 / 9,
                crossAxisRatio: 1,
                alignment: AlignmentDirectional.centerEnd,
              ),
            ],
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) =>
                buildSneakerCard(context, filteredSneakers[index]),
            childCount: filteredSneakers.length,
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}

Widget buildSneakerCard(BuildContext context, Map<String, dynamic> sneaker) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            imageUrl: sneaker['imageUrl'],
            name: sneaker['name'],
            price: sneaker['price'],
            description: sneaker['description'],
            backColor: sneaker['color'],
            textdescription: sneaker['textdescription'],
          ),
        ),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: sneaker['color'],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sneaker['name'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        sneaker['description'],
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Image.network(
                sneaker['imageUrl'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 7, right: 15),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '\$${sneaker['price'].toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// 10th commit
