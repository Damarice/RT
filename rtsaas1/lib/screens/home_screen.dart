import 'package:flutter/material.dart';
import 'package:rtsaas1/screens/fundraising.dart';
import 'package:rtsaas1/screens/marketplaces.dart';
import 'package:rtsaas1/screens/network.dart';
import 'package:rtsaas1/screens/targetscreen.dart';
import 'package:rtsaas1/screens/training.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NGO-Startup Synergy'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Navigate to the notifications screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Personalized Greetings/Recommendations
            _buildPersonalizedSection(context),
            SizedBox(height: 24.0),
            // Search Functionality
            _buildSearchBar(context),
            SizedBox(height: 24.0),
            // Featured Content/Highlights
            _buildFeaturedContent(context),
            SizedBox(height: 24.0),
            // Quick Access to Key Features
            _buildQuickAccess(context),
            SizedBox(height: 24.0),
            // Testimonials/Reviews
            _buildCTA(context),
            SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }

  // Personalized Greetings/Recommendations
  Widget _buildPersonalizedSection(BuildContext context) {
    // Implement personalized greetings or recommendations based on user data
    return GestureDetector(
      onTap: () {
        // Navigate to personalized recommendations screen
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PersonalizedRecommendationsScreen()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.blue.withOpacity(0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back, [User]!',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            Text(
              'Explore the latest opportunities tailored for you.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 12.0),
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to personalized recommendations screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PersonalizedRecommendationsScreen()));
              },
              icon: Icon(Icons.explore),
              label: Text('Explore'),
            ),
          ],
        ),
      ),
    );
  }

  // Search Functionality
  Widget _buildSearchBar(BuildContext context) {
    // Implement search functionality
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for content or features...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }

  // Featured Content/Highlights
  Widget _buildFeaturedContent(BuildContext context) {
    // Implement featured content or highlights
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Featured Content',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 16.0),
        // Implement featured content items (e.g., cards, tiles)
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              4,
              (index) => _buildFeaturedCard(context, index),
            ),
          ),
        ),
      ],
    );
  }

  // Quick Access to Key Features (Arranged from left to right)
  Widget _buildQuickAccess(BuildContext context) {
    // Implement quick access buttons/icons for key features
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Access',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 16.0),
        // Implement quick access buttons/icons (e.g., fundraising, networking)
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildQuickAccessCard(
                  context, 'Fundraising', Icons.monetization_on, () {
                _handleNavigation(context, FundraisingPage());
              }),
              SizedBox(width: 16.0),
              _buildQuickAccessCard(context, 'Networking', Icons.group, () {
                _handleNavigation(context, NetworkingPage());
              }),
              SizedBox(width: 16.0),
              _buildQuickAccessCard(context, 'Training', Icons.school, () {
                _handleNavigation(context, TrainingPage());
              }),
              SizedBox(width: 16.0),
              _buildQuickAccessCard(context, 'Tech Marketplace', Icons.computer,
                  () {
                _handleNavigation(context, MarketplacePage());
              }),
            ],
          ),
        ),
      ],
    );
  }

  // Call-to-Action (CTA)
  Widget _buildCTA(BuildContext context) {
    // Implement a prominent call-to-action button
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          _handleCTAButtonPressed(context);
        },
        child: Text('Get Started'),
      ),
    );
  }

  // Build a Featured Content Card
  Widget _buildFeaturedCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        // Navigate to featured content details screen
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    FeaturedContentDetailsScreen(index: index)));
      },
      child: Container(
        width: 240.0,
        margin: EdgeInsets.only(right: 16.0),
        child: Card(
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                child: Image.network(
                  'https://via.placeholder.com/240x160', // Placeholder image
                  fit: BoxFit.cover,
                  height: 160.0,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured Item ${index + 1}',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Description of the featured item goes here.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Build a Quick Access Card
  Widget _buildQuickAccessCard(
      BuildContext context, String title, IconData icon, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(icon, size: 32.0),
              SizedBox(height: 8.0),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Call-to-Action Button Action
  void _handleCTAButtonPressed(BuildContext context) {
    try {
      // Implement action for the CTA button
      // For example, navigate to another screen
      Navigator.push(context, MaterialPageRoute(builder: (context) => TargetScreen()));
    } catch (e) {
      // Handle error if navigation fails
      print('Navigation error: $e');
      // Optionally, display an error message to the user
    }
  }

  // Handle Navigation with Error Handling
  void _handleNavigation(BuildContext context, Widget targetScreen) {
    try {
      Navigator.push(context, MaterialPageRoute(builder: (context) => targetScreen));
    } catch (e) {
      print('Navigation error: $e');
    }
  }
}

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text('This is the notifications screen'),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('This is the settings screen'),
      ),
    );
  }
}

class PersonalizedRecommendationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personalized Recommendations'),
      ),
      body: Center(
        child: Text('Personalized Recommendations Screen'),
      ),
    );
  }
}

class FeaturedContentDetailsScreen extends StatelessWidget {
  final int index;

  FeaturedContentDetailsScreen({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Featured Content Details'),
      ),
      body: Center(
        child: Text('Details of Featured Content Item ${index + 1}'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'NGO-Startup Synergy',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: HomeScreen(),
  ));
}
