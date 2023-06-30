// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SalesPerformanceScreen extends StatefulWidget {
  const SalesPerformanceScreen({Key? key}) : super(key: key);

  @override
  _SalesPerformanceScreenState createState() => _SalesPerformanceScreenState();
}

class _SalesPerformanceScreenState extends State<SalesPerformanceScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 8.0),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
            width: 50,
          ),
          const SizedBox(
            child: Text(
              'Sales Performance',
              style: TextStyle(
                color: Color(0xFF663274),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
            width: 50,
          ),
          SizedBox(
            height: 50.0,
            child: TabBar(
              controller: _tabController,
              indicatorColor: const Color(0xFF663274),
              labelColor: const Color(0xFF663274),
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(text: 'Monthly'),
                Tab(text: 'Item-wise'),
                Tab(text: 'By Invoice'),
                Tab(text: 'Customer-wise'),
              ],
            ),
          ),
          const Row(
            children: [
              SizedBox(
                height: 25,
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // First Tab: Sales Monthly
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Today',
                              border: InputBorder.none,
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'Today', child: Text('Today')),
                              DropdownMenuItem(
                                  value: 'Current Month',
                                  child: Text('Current Month')),
                              DropdownMenuItem(
                                  value: 'Current Quarter',
                                  child: Text('Current Quarter')),
                              DropdownMenuItem(
                                  value: 'Current FY',
                                  child: Text('Current FY')),
                              DropdownMenuItem(
                                  value: 'Previous FY',
                                  child: Text('Previous FY')),
                              DropdownMenuItem(
                                  value: 'Custom Range',
                                  child: Text('Custom Range')),
                            ],
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () {
                            // Handle calendar icon tap
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.97,
                          child: SingleChildScrollView(
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: const Color(0xFFEA7B0C)),
                              child: DataTable(
                                dividerThickness: 1.0,
                                columns: const [
                                  DataColumn(label: Text('Month')),
                                  DataColumn(label: Text('Total Sales')),
                                  DataColumn(label: Text('No. of Orders')),
                                ],
                                rows: [
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for jan
                                        },
                                        child: const Text('  Jan'),
                                      )),
                                      const DataCell(Text('1527641.77')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                          onTap: () {
                                            //handle click for feb
                                          },
                                          child: const Text('  Feb'))),
                                      const DataCell(Text('133179.61')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Mar
                                        },
                                        child: const Text('  Mar'))),
                                      const DataCell(Text('1924268.26')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Apr
                                        },
                                        child: const Text('  Apr'))),
                                      const DataCell(Text('21500.00')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for May
                                        },
                                        child: const Text('  May'))),
                                      const DataCell(Text('5450.00')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Jun
                                        },
                                        child: const Text('  Jun'))),
                                      const DataCell(Text('1527641.77')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Jul
                                        },
                                        child: const Text('  Jul'))),
                                      const DataCell(Text('133179.61')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Aug
                                        },
                                        child: const Text('  Aug'))),
                                      const DataCell(Text('1924268.26')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Sep
                                        },
                                        child: const Text('  Sep'))),
                                      const DataCell(Text('21500.00')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Oct
                                        },
                                        child: const Text('  Oct'))),
                                      const DataCell(Text('5450.00')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Nov
                                        },
                                        child: const Text('  Nov'))),
                                      const DataCell(Text('5450.00')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle click for Dec
                                        },
                                        child: const Text('  Dec'))),
                                      const DataCell(Text('5450.00')),
                                      const DataCell(Text("        74"))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => const Color(0xFFEA7A40)),
                                    cells: const [
                                      DataCell(
                                        Text(
                                          'Total',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '3612039.64',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
                // Second Tab: Sales Item-wise
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Today',
                              border: InputBorder.none,
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'Today', child: Text('Today')),
                              DropdownMenuItem(
                                  value: 'Current Month',
                                  child: Text('Current Month')),
                              DropdownMenuItem(
                                  value: 'Current Quarter',
                                  child: Text('Current Quarter')),
                              DropdownMenuItem(
                                  value: 'Current FY',
                                  child: Text('Current FY')),
                              DropdownMenuItem(
                                  value: 'Previous FY',
                                  child: Text('Previous FY')),
                              DropdownMenuItem(
                                  value: 'Custom Range',
                                  child: Text('Custom Range')),
                            ],
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () {
                            // Handle calendar icon tap
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
                // Third Tab: Sales By Invoice
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Today',
                              border: InputBorder.none,
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'Today', child: Text('Today')),
                              DropdownMenuItem(
                                  value: 'Current Month',
                                  child: Text('Current Month')),
                              DropdownMenuItem(
                                  value: 'Current Quarter',
                                  child: Text('Current Quarter')),
                              DropdownMenuItem(
                                  value: 'Current FY',
                                  child: Text('Current FY')),
                              DropdownMenuItem(
                                  value: 'Previous FY',
                                  child: Text('Previous FY')),
                              DropdownMenuItem(
                                  value: 'Custom Range',
                                  child: Text('Custom Range')),
                            ],
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () {
                            // Handle calendar icon tap
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
                // Fourth Tab: Sales Customer-wise
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Today',
                              border: InputBorder.none,
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'Today', child: Text('Today')),
                              DropdownMenuItem(
                                  value: 'Current Month',
                                  child: Text('Current Month')),
                              DropdownMenuItem(
                                  value: 'Current Quarter',
                                  child: Text('Current Quarter')),
                              DropdownMenuItem(
                                  value: 'Current FY',
                                  child: Text('Current FY')),
                              DropdownMenuItem(
                                  value: 'Previous FY',
                                  child: Text('Previous FY')),
                              DropdownMenuItem(
                                  value: 'Custom Range',
                                  child: Text('Custom Range')),
                            ],
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () {
                            // Handle calendar icon tap
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
