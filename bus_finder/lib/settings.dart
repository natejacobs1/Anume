import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'notification_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeProvider, NotificationProvider>(
      builder: (context, themeProvider, notificationProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Settings'),
          ),
          body: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.brightness_6),
                title: Text('Dark Mode'),
                trailing: Switch(
                  value: themeProvider.isDarkMode,
                  onChanged: (bool value) {
                    themeProvider.toggleTheme();
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
                subtitle: Text(
                  notificationProvider.notificationsEnabled 
                    ? 'Enabled' 
                    : 'Disabled'
                ),
                trailing: Switch(
                  value: notificationProvider.notificationsEnabled,
                  onChanged: (bool value) {
                    notificationProvider.toggleNotifications();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          value 
                            ? 'Notifications enabled' 
                            : 'Notifications disabled'
                        ),
                        duration: Duration(seconds: 2),
                      ),
                    );
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
      },
    );
  }
}