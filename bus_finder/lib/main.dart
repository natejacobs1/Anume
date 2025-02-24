import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bus_data.dart';
import 'settings.dart';
import 'theme_provider.dart';
import 'notification_provider.dart';

void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => NotificationProvider()),
  ],
  child: BusFinderApp(),
));

class BusFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<ThemeProvider>(
    builder: (context, themeProvider, _) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mangalore Bus Finder',
      theme: themeProvider.themeData,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  final _searchController = TextEditingController();
  List<Bus> filteredBuses = allBuses;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..forward();
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _filterBuses(String query) => setState(() {
    filteredBuses = allBuses.where((bus) => 
      bus.busNumber.toLowerCase().contains(query.toLowerCase()) ||
      bus.stops.any((stop) => stop.toLowerCase().contains(query.toLowerCase()))
    ).toList();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Bus Finder', 
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 10,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => showSearch(
              context: context,
              delegate: BusSearchDelegate(allBuses),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Mangalore Bus Finder',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Find your bus route easily',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsScreen()),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              onChanged: _filterBuses,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search by bus number or stop...',
                hintStyle: TextStyle(color: Colors.white70),
                prefixIcon: Icon(Icons.search, color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.blueGrey[800],
              ),
            ),
          ),
          Expanded(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: ListView.builder(
                itemCount: filteredBuses.length,
                itemBuilder: (context, index) {
                  final bus = filteredBuses[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      title: Text(
                        'Bus ${bus.busNumber}',
                        style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        bus.routeDescription,
                        style: TextStyle(fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Icon(Icons.directions_bus, color: Colors.white),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BusDetailScreen(bus: bus),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BusDetailScreen extends StatelessWidget {
  final Bus bus;
  const BusDetailScreen({Key? key, required this.bus}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Bus ${bus.busNumber}'),
      backgroundColor: Colors.blueAccent,
    ),
    body: Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          color: Colors.blueAccent.withOpacity(0.1),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 30,
                child: Icon(Icons.directions_bus, 
                  color: Colors.white, 
                  size: 30
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bus ${bus.busNumber}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bus.routeDescription,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: bus.stops.length,
            itemBuilder: (_, index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey[100],
                child: Text('${index + 1}'),
              ),
              title: Text(
                bus.stops[index],
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class BusSearchDelegate extends SearchDelegate {
  final List<Bus> buses;
  BusSearchDelegate(this.buses);

  @override
  List<Widget> buildActions(BuildContext context) => [
    IconButton(
      icon: Icon(Icons.clear),
      onPressed: () => query = '',
    ),
  ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () => close(context, null),
  );

  @override
  Widget buildResults(BuildContext context) => buildSuggestions(context);

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? buses
        : buses.where((bus) =>
            bus.busNumber.toLowerCase().contains(query.toLowerCase()) ||
            bus.stops.any((stop) => stop.toLowerCase().contains(query.toLowerCase()))).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final bus = suggestions[index];
        return ListTile(
          leading: Icon(Icons.directions_bus),
          title: Text('Bus ${bus.busNumber}'),
          subtitle: Text(bus.routeDescription),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BusDetailScreen(bus: bus),
            ),
          ),
        );
      },
    );
  }
}
