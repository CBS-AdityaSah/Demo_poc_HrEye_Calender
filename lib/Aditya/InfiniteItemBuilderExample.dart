import 'package:flutter/material.dart';

class InfiniteItemBuilderExample extends StatefulWidget {
  const InfiniteItemBuilderExample({super.key});

  @override
  _InfiniteItemBuilderExampleState createState() =>
      _InfiniteItemBuilderExampleState();
}

class _InfiniteItemBuilderExampleState
    extends State<InfiniteItemBuilderExample> {
  DateTime _selectedDate = DateTime.now(); // Store the selected date
  DateTime _currentDate = DateTime.now(); // Store the current date for highlighting

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Shrink-wrap the column to its children's height
      children: [
        // Title for the calendar example
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Infinite Scroll Calendar Example',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        // Use Flexible with FlexFit.loose instead of Expanded
        Flexible(
          fit: FlexFit.loose, // Allow the child to size itself
          child: SizedBox(
            height: 120, // Set a fixed height for the scrollable area
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              itemBuilder: (BuildContext context, int index) {
                // Calculate the date based on the current index
                DateTime date = DateTime.now().add(Duration(days: index - 365));

                // Determine if the date is selected or is the current day
                bool isSelected = _selectedDate.year == date.year &&
                    _selectedDate.month == date.month &&
                    _selectedDate.day == date.day;

                bool isCurrentDay = _currentDate.year == date.year &&
                    _currentDate.month == date.month &&
                    _currentDate.day == date.day;

                // Build each date item
                return GestureDetector(
                  onTap: () {
                    // Update the selected date when tapped
                    setState(() {
                      _selectedDate = date;
                    });
                  },
                  child: Container(
                    width: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.blue // Highlight selected date
                          : (isCurrentDay ? Colors.blue : Colors.grey[200]), // Highlight current day
                      borderRadius: BorderRadius.circular(8.0),
                      border: isCurrentDay
                          ? Border.all(color: Colors.blue, width: 2) // Add a border for current day
                          : null,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${date.day}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            color: isSelected || isCurrentDay ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          _getMonthName(date.month),
                          style: TextStyle(
                            fontSize: 14,
                            color: isSelected || isCurrentDay ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          '${date.year}',
                          style: TextStyle(
                            fontSize: 12,
                            color: isSelected || isCurrentDay ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Display the currently selected date
        Text(
          'Selected Date: ${_selectedDate.toLocal()}'.split(' ')[0], // Display date in a readable format
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  // Helper method to get the month name from the month number
  String _getMonthName(int month) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }
}
