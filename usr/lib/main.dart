import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Company {
  final String name;
  final String location;
  final String website;

  Company({required this.name, required this.location, required this.website});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vizag Software Companies',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CompanyListPage(),
    );
  }
}

class CompanyListPage extends StatelessWidget {
  const CompanyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Company> companies = [
      Company(name: 'Maple Software', location: 'D. No. 10-50-84/C, 4th Floor, Sun Towers, Waltair Main Road, Visakhapatnam – 530002', website: 'N/A'),
      Company(name: 'Evolutyz', location: 'Visakhapatnam', website: 'https://www.evolutyz.com/'),
      Company(name: 'Vizag Technologies', location: 'Visakhapatnam', website: 'https://vizagtechnologies.com/'),
      Company(name: 'Miracle Software', location: 'Mig-49, Lokam Street, Off Beach Rd, Lawsons Bay Colony, Pedda Waltair Vishakhapatnam, 530017', website: 'N/A'),
      Company(name: 'Catchway', location: '5th Floor, 502, Vinayagar Manapragada, Above Vijaya Medical Center, Gurudwara Jn, Vizag', website: 'N/A'),
      Company(name: 'Colour Moon Technologies', location: 'Visakhapatnam', website: 'N/A'),
      Company(name: 'Symbiosys Technologies', location: 'Visakhapatnam', website: 'N/A'),
      Company(name: 'UST Global', location: 'Visakhapatnam', website: 'N/A'),
      Company(name: 'Wipro Limited', location: 'Visakhapatnam', website: 'N/A'),
      Company(name: 'Inspiredge', location: 'Visakhapatnam', website: 'N/A'),
      Company(name: 'Absolin', location: 'Visakhapatnam', website: 'N/A'),
      Company(name: 'Supervue Ai', location: 'Andhra Pradesh (HQ in Visakhapatnam)', website: 'N/A'),
      Company(name: 'FURPSQ Technologies', location: 'Visakhapatnam', website: 'N/A'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vizag Software Companies'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Company Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Location',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Official Website',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: companies.map((company) => DataRow(
              cells: <DataCell>[
                DataCell(Text(company.name)),
                DataCell(Text(company.location)),
                DataCell(Text(company.website)),
              ],
            )).toList(),
          ),
        ),
      ),
    );
  }
}
