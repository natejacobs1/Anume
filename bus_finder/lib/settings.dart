import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            title: Text('Dark Mode'),
            trailing: Switch(
              value: isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  isDarkMode = value;
                });
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // TODO: Implement language selection
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Switch(
              value: true, // TODO: Implement notifications
              onChanged: (bool value) {
                // TODO: Implement notifications
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('App Version'),
            subtitle: Text('1.0.0'),
          ),
        ],
      ),
    );
  }
}