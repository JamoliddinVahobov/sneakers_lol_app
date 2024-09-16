import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 2; // Set home as the initial screen (index 2)

  // List of routes matching the navigation order
  final List<String> _routes = [
    '/first', // First tab
    '/second', // Second tab
    '/', // Home (center tab)
    '/third', // Fourth tab
    '/fourth', // Fifth tab
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: CurvedNavigationBar(
        index: _currentIndex,
        height: 60.0,
        backgroundColor: Colors.transparent, // Transparent background
        color: Colors.white, // Color of the bottom bar
        buttonBackgroundColor: Colors.blueAccent, // Color for selected button
        animationDuration: const Duration(milliseconds: 300),
        items: <Widget>[
          _buildIcon(Icons.show_chart, 0),
          _buildIcon(Icons.favorite_border, 1),
          _buildIcon(Icons.home, 2),
          _buildIcon(Icons.shopping_cart, 3),
          _buildIcon(Icons.settings, 4),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update current index
          });

          Navigator.pushNamed(context, _routes[index]);
        },
      ),
    );
  }

  // Build icons and apply color based on whether they are selected
  Widget _buildIcon(IconData icon, int index) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: index == _currentIndex
            ? [
                BoxShadow(
                  color:
                      Colors.blue.withOpacity(0.4), // Shadow for selected item
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: const Offset(0, 3),
                ),
              ]
            : [],
      ),
      child: Icon(
        icon,
        size: 30,
        color: _currentIndex == index
            ? Colors.white
            : Colors.black54, // Change icon color if selected
      ),
    );
  }
}

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';

// class CustomBottomBar extends StatefulWidget {
//   const CustomBottomBar({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _CustomBottomBarState createState() => _CustomBottomBarState();
// }

// class _CustomBottomBarState extends State<CustomBottomBar> {
//   int _currentIndex = 2; // Set home as the initial screen (index 2)

//   // List of routes matching the navigation order
//   final List<String> _routes = [
//     '/first', // First tab
//     '/second', // Second tab
//     '/', // Home (center tab)
//     '/third', // Fourth tab
//     '/fourth', // Fifth tab
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.2),
//             spreadRadius: 5,
//             blurRadius: 10,
//             offset: const Offset(0, 3), // Shadow position
//           ),
//         ],
//       ),
//       child: CurvedNavigationBar(
        
//         index: _currentIndex,
//         height: 60.0,
//         backgroundColor: Colors.transparent, // Transparent background
//         color: Colors.white, // Color of the bottom bar
//         buttonBackgroundColor: Colors.blueAccent, // Color for selected button
//         animationDuration: const Duration(milliseconds: 300),
//         items: <Widget>[
//           _buildIcon(Icons.show_chart, 0),
//           _buildIcon(Icons.favorite_border, 1),
//           _buildIcon(Icons.home, 2),
//           _buildIcon(Icons.shopping_cart, 3),
//           _buildIcon(Icons.settings, 4),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index; // Update current index
//           });

//           Navigator.pushNamed(context, _routes[index]);
//         },
//       ),
//     );
//   }

//   // Build icons and apply color based on whether they are selected
//   Widget _buildIcon(IconData icon, int index) {
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         boxShadow: index == _currentIndex
//             ? [
//                 BoxShadow(
//                   color:
//                       Colors.blue.withOpacity(0.4), // Shadow for selected item
//                   blurRadius: 10,
//                   spreadRadius: 3,
//                   offset: const Offset(0, 3),
//                 ),
//               ]
//             : [],
//       ),
//       child: Icon(
//         icon,
//         size: 30,
//         color: _currentIndex == index
//             ? Colors.white
//             : Colors.black54, // Change icon color if selected
//       ),
//     );
//   }
// }
