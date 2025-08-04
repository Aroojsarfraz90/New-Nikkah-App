import 'package:flutter/material.dart';
import 'uploadphotos_screens.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirthdateScreen(),
    ),
  );
}

class BirthdateScreen extends StatefulWidget {
  const BirthdateScreen({super.key});

  @override
  State<BirthdateScreen> createState() => _BirthdateScreenState();
}

class _BirthdateScreenState extends State<BirthdateScreen> {
  int selectedDay = 4;
  int selectedMonth = 11; // December (index)
  int selectedYear = 1994;

  List<int> days = List.generate(31, (index) => index + 1);
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  List<int> years = List.generate(50, (index) => 1980 + index);

  int calculateAge(int year, int month, int day) {
    final today = DateTime.now();
    int age = today.year - year;
    if (today.month < month || (today.month == month && today.day < day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    int age = calculateAge(selectedYear, selectedMonth + 1, selectedDay);

    return Scaffold(
      backgroundColor: const Color(0xFFFCF9F6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back_ios_new, size: 20),
              ),
              const SizedBox(height: 20),

              const Text(
                'Tell Us More About Yourself',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              const Text('Add Your Birthdate*', style: TextStyle(fontSize: 14)),
              const SizedBox(height: 20),

              // Date Pickers (Day, Month, Year)
              SizedBox(
                height: 150,
                child: Row(
                  children: [
                    // Day
                    Expanded(
                      child: ListWheelScrollView.useDelegate(
                        itemExtent: 40,
                        perspective: 0.002,
                        diameterRatio: 1.5,
                        physics: const FixedExtentScrollPhysics(),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedDay = days[index];
                          });
                        },
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount: days.length,
                          builder: (context, index) {
                            final isSelected = selectedDay == days[index];
                            return Text(
                              '${days[index]}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.black87,
                                backgroundColor: isSelected
                                    ? const Color(0xFFB8926A)
                                    : Colors.transparent,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    // Month
                    Expanded(
                      child: ListWheelScrollView.useDelegate(
                        itemExtent: 40,
                        perspective: 0.002,
                        diameterRatio: 1.5,
                        physics: const FixedExtentScrollPhysics(),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedMonth = index;
                          });
                        },
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount: months.length,
                          builder: (context, index) {
                            final isSelected = selectedMonth == index;
                            return Text(
                              months[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.black87,
                                backgroundColor: isSelected
                                    ? const Color(0xFFB8926A)
                                    : Colors.transparent,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    // Year
                    Expanded(
                      child: ListWheelScrollView.useDelegate(
                        itemExtent: 40,
                        perspective: 0.002,
                        diameterRatio: 1.5,
                        physics: const FixedExtentScrollPhysics(),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedYear = years[index];
                          });
                        },
                        childDelegate: ListWheelChildBuilderDelegate(
                          childCount: years.length,
                          builder: (context, index) {
                            final isSelected = selectedYear == years[index];
                            return Text(
                              '${years[index]}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.black87,
                                backgroundColor: isSelected
                                    ? const Color(0xFFB8926A)
                                    : Colors.transparent,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Age display
              Center(
                child: Text(
                  'You are $age years old',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFFB8926A),
                  ),
                ),
              ),

              const Spacer(),

              // Next Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UploadPhotosScreen(),
                    ),
                  );
                  // TODO: Go to next screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB8926A),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
