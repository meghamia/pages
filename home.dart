// import 'package:flutter/material.dart';
//
// class Home extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _key,
//       drawer: Drawer(),
//       appBar: AppBar(
//         title: Text("HomePAge",style: TextStyle(color: Colors.grey[50]),),
//         centerTitle: true,
//         elevation: 0.0,
//         backgroundColor: Colors.blueGrey,
//         leading: IconButton(icon: Icon(Icons.menu),
//           onPressed: (){
//             _key.currentState!.openDrawer();
//           },
//         ),
//         actions: <Widget>[
//           IconButton(icon: Icon(Icons.notifications),
//             onPressed: (){
//
//             },
//           ),
//           IconButton(icon: Icon(Icons.search),
//             onPressed: (){},
//           ),
//
//         ],
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         margin: EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           children: <Widget>[
//             Container(
//               height: 120,
//               width: double.infinity,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   TextFormField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.search),
//                       hintText: "Search Something",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       )
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Featured",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
//                       ),
//                       Text("See All",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)
//                       ),
//                     ],
//                   ),
//
//                 ],
//               ),
//             ),
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Card(
//                       child: Column(
//
//                         children: [
//                           Container(
//                             height: 250,
//                             width: 180,
//                            // color: Colors.lightBlueAccent,
//                             child: Column(
//                               children: <Widget>[
//                                 Container(
//                                   height: 190,
//                                   width: 160,
//                                   decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                     image: NetworkImage("https://images.pexels.com/photos/17035520/pexels-photo-17035520/free-photo-of-black-and-white-studio-shoot-of-a-young-man-wearing-striped-shirt.png?auto=compress&cs=tinysrgb&w=600")
//                                   ),
//                                   ),
//                                 ),
//                                 Text("\$30.0.0",style: TextStyle(fontWeight: FontWeight.bold,
//                                 fontSize: 18,color: Color(0xff9b96d6)
//                                 ),
//                                 ),
//                                 Text("Man T-Shirts",style: TextStyle(fontSize: 17),),
//
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'profile.dart'; // Import the Profile page

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 16.0),
          Text('Home Content Goes Here'),
        ],
      ),
    ), // Home tab content
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 16.0),
          Text('Add Content Goes Here'),
        ],
      ),
    ), // Add tab content
    ProfilePage(), // Profile tab content
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // You can add other drawer items here if needed
            // ListTile(
            //   title: Text('Other Drawer Item'),
            // ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: _pages[_currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

}
