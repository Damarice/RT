import 'package:flutter/material.dart';

class TrainingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Training'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enhance Your Skills with Training',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            _buildSearchBar(),
            SizedBox(height: 20.0),
            _buildFilters(),
            SizedBox(height: 20.0),
            _buildTrainingList(),
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
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for training modules or resources',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildFilters() {
    // Implement filters UI (e.g., dropdowns, checkboxes)
    return Text('Filters: Under Construction');
  }

  Widget _buildTrainingList() {
    // Implement training list UI
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Available Training Modules',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12.0),
        _buildTrainingItem(
          title: 'Business Development Strategies for NGOs',
          description: 'Explore effective business development strategies for NGOs.',
        ),
        SizedBox(height: 12.0),
        _buildTrainingItem(
          title: 'Strategic Planning for Startups',
          description: 'Learn how to develop strategic plans for startup success.',
        ),
        SizedBox(height: 12.0),
        _buildTrainingItem(
          title: 'Fundraising Techniques for NGOs',
          description: 'Discover fundraising techniques and best practices for NGOs.',
        ),
        SizedBox(height: 12.0),
        _buildTrainingItem(
          title: 'Digital Marketing for Startups',
          description: 'Master digital marketing techniques tailored for startups.',
        ),
        // Add more training items as needed
      ],
    );
  }

  Widget _buildTrainingItem({
    required String title,
    required String description,
  }) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      onTap: () {
        // Implement action to navigate to training details page
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Training Page',
    home: TrainingPage(),
  ));
}
