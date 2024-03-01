import 'package:flutter/material.dart';

class MarketplacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Resources for NGOs and Startups',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            _buildSearchBar(),
            SizedBox(height: 20.0),
            _buildCategories(),
            SizedBox(height: 20.0),
            _buildResourceList(),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement action to access additional resources
              },
              child: Text('Additional Resources'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white.withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for resources',
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildCategories() {
    // Implement categories or filters UI
    return Text('Categories: Under Construction');
  }

  Widget _buildResourceList() {
    // Implement resource list UI
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Available Resources',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12.0),
        _buildResourceItem(
          title: 'Grant Writing Guide',
          description: 'Comprehensive guide on writing successful grant proposals.',
          price: '\$19.99',
        ),
        SizedBox(height: 12.0),
        _buildResourceItem(
          title: 'Social Media Marketing Toolkit',
          description: 'Toolkit containing templates and tools for social media marketing campaigns.',
          price: '\$29.99',
        ),
        SizedBox(height: 12.0),
        _buildResourceItem(
          title: 'Startup Financial Planning Template',
          description: 'Template to help startups plan their finances and budgets.',
          price: '\$9.99',
        ),
        SizedBox(height: 12.0),
        _buildResourceItem(
          title: 'NGO Governance Handbook',
          description: 'Handbook outlining best practices for NGO governance and compliance.',
          price: '\$24.99',
        ),
        // Add more resource items as needed
      ],
    );
  }

  Widget _buildResourceItem({
    required String title,
    required String description,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white.withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Price: $price',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Marketplace Page',
    home: MarketplacePage(),
  ));
}
