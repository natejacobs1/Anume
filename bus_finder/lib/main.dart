import 'package:flutter/material.dart';

void main() {
  runApp(BusFinderApp());
}

class BusFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bus Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  final List<String> buses = ['Bus 101', 'Bus 202', 'Bus 303', 'Bus 404'];
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  TextEditingController _searchController = TextEditingController();
  List<String> filteredBuses = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
    filteredBuses = buses;
  }

  @override
  void dispose() {
    _controller.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _filterBuses(String query) {
    setState(() {
      filteredBuses = buses.where((bus) => 
        bus.toLowerCase().contains(query.toLowerCase())
      ).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Bus Finder', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
        elevation: 10,
        centerTitle: true,
        actions: [
          Container(
            width: 200,
            margin: EdgeInsets.only(right: 16),
            child: TextField(
              controller: _searchController,
              onChanged: _filterBuses,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search bus...',
                hintStyle: TextStyle(color: Colors.white70),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.white70),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: ListView.builder(
            itemCount: filteredBuses.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  title: Text(
                    filteredBuses[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  leading: Icon(Icons.directions_bus, color: Colors.blueAccent, size: 30),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  onTap: () {
                    // Future: Navigate to Bus Details Screen
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
