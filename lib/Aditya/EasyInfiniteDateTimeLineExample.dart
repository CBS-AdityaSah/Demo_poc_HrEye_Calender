import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart'; // Import the package

class EasyInfiniteDateTimeLineExample extends StatefulWidget {
  const EasyInfiniteDateTimeLineExample({super.key});

  @override
  _EasyInfiniteDateTimeLineExampleState createState() => _EasyInfiniteDateTimeLineExampleState();
}

class _EasyInfiniteDateTimeLineExampleState extends State<EasyInfiniteDateTimeLineExample> {
  DateTime _selectedDate = DateTime.now(); // Store the selected date

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title or label
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Scrollable Calendar Example',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        // Timeline widget from the EasyDateTimeline package
        EasyDateTimeLine(
          initialDate: _selectedDate, // Start from the selected date
          onDateChange: (DateTime date) {
            // Update the selected date when a new date is tapped
            setState(() {
              _selectedDate = date;
            });
          },
          // Adjusted dateBuilder with specific parameters
          // dateBuilder: (DateTime date, bool isSelected) {
          //   // Customize the date appearance
          //   return Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 4.0),
          //     padding: const EdgeInsets.all(8.0),
          //     decoration: BoxDecoration(
          //       color: isSelected ? Colors.blue : Colors.grey[200], // Highlight selected date
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           '${date.day}',
          //           style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          //             color: isSelected ? Colors.white : Colors.black,
          //           ),
          //         ),
          //         Text(
          //           _getMonthName(date.month),
          //           style: TextStyle(
          //             fontSize: 14,
          //             color: isSelected ? Colors.white : Colors.black,
          //           ),
          //         ),
          //       ],
          //     ),
          //   );
          // },
        ),
        const SizedBox(height: 16),
        // Display selected date information
        Text(
          'Selected Date: ${_selectedDate.toLocal()}'.split(' ')[0], // Display date in a readable format
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  // Helper method to get month name from the month number
  String _getMonthName(int month) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }
}
