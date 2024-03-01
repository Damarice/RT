import 'package:flutter/material.dart';

class FundraisingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fundraising'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFundraisingCampaign(
              title: 'Clean Water for All',
              description: 'Provide clean and safe drinking water to communities in need.',
              socialMediaAccounts: ['Twitter: @CleanWaterForAll', 'Facebook: CleanWaterForAll'],
              sponsorPercentage: 70,
              ownerProfile: 'John Doe - Founder of Clean Water NGO',
              blogPost: 'Read more about our campaign for clean water: [link]',
            ),
            SizedBox(height: 20.0),
            _buildFundraisingCampaign(
              title: 'Education for Every Child',
              description: 'Ensure every child has access to quality education regardless of their background.',
              socialMediaAccounts: ['Twitter: @Education4All', 'Facebook: EducationForEveryChild'],
              sponsorPercentage: 60,
              ownerProfile: 'Jane Smith - Founder of Education Foundation',
              blogPost: 'Learn more about our efforts to promote education: [link]',
            ),
            SizedBox(height: 20.0),
            _buildFundraisingCampaign(
              title: 'Fight Against Hunger',
              description: 'Combat hunger and food insecurity by providing nutritious meals to those in need.',
              socialMediaAccounts: ['Twitter: @FightHungerNow', 'Facebook: FightAgainstHunger'],
              sponsorPercentage: 80,
              ownerProfile: 'Alex Johnson - Director of Hunger Relief Organization',
              blogPost: 'Discover how we\'re making a difference in the fight against hunger: [link]',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFundraisingCampaign({
    required String title,
    required String description,
    required List<String> socialMediaAccounts,
    required int sponsorPercentage,
    required String ownerProfile,
    required String blogPost,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 12.0),
          Divider(color: Colors.grey),
          SizedBox(height: 12.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Social Media:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: socialMediaAccounts.map((account) => Text(account)).toList(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Suggested Sponsor Percentage:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text('$sponsorPercentage%'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0),
          Divider(color: Colors.grey),
          SizedBox(height: 12.0),
          Text(
            'Owner Profile:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(ownerProfile),
          SizedBox(height: 12.0),
          Divider(color: Colors.grey),
          SizedBox(height: 12.0),
          Text(
            'Blog Post:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(blogPost),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Fundraising Page',
    home: FundraisingPage(),
  ));
}
