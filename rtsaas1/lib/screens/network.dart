import 'package:flutter/material.dart';

class NetworkingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Networking'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Partners for Collaboration',
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
            _buildFilters(),
            SizedBox(height: 20.0),
            _buildProjectList(),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement action for posting a new collaboration request or project opportunity
              },
              child: Text('Post a New Request'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for projects or partners',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildCategories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildCategoryChip('Finance'),
        _buildCategoryChip('Social Economic'),
        _buildCategoryChip('Economic'),
        _buildCategoryChip('Private Business'),
        _buildCategoryChip('Trade'),
        // Add more categories as needed
      ],
    );
  }

  Widget _buildCategoryChip(String category) {
    return ActionChip(
      label: Text(category),
      onPressed: () {
        // Implement action to filter projects by category
      },
    );
  }

  Widget _buildFilters() {
    // Implement filters UI (e.g., dropdowns, checkboxes)
    return Text('Filters: Under Construction');
  }

  Widget _buildProjectList() {
    // Implement project list UI
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Available Projects',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12.0),
        _buildProjectItem(
          title: 'Project A',
          description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          owner: 'John Doe',
        ),
        SizedBox(height: 12.0),
        _buildProjectItem(
          title: 'Project B',
          description: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          owner: 'Jane Smith',
        ),
        // Add more project items as needed
      ],
    );
  }

  Widget _buildProjectItem({
    required String title,
    required String description,
    required String owner,
  }) {
    return GestureDetector(
      onTap: () {
        // Implement action to view project details
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                  'Owner: $owner',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Networking Page',
    home: NetworkingPage(),
  ));
}
