import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

List<Map<String, dynamic>> tasks = [
  {'task': 'Learn English', 'isChecked': false},
  {'task': 'Study programming', 'isChecked': false},
  {'task': 'Sports', 'isChecked': false},
  {'task': 'Reading Al Quran', 'isChecked': false},
  {'task': 'reading book', 'isChecked': false},
  {'task': 'Watch movie', 'isChecked': false},
  {'task': 'Shower', 'isChecked': false},
  {'task': 'Play games', 'isChecked': false},
  {'task': 'Relaxation', 'isChecked': false},
  {'task': 'reading book', 'isChecked': false}
];


class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade200,
        animationDuration: const Duration(milliseconds: 250), // تسريع الانتقال
        animationCurve: Curves.easeInOut, // جعل الحركة أكثر سلاسة
        items: const <Widget>[
          Icon(Icons.task),
          Icon(Icons.business_center),
        ],
        onTap: (index) {
          // Handle button tap
        },
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        leadingWidth: 200,
        leading: Builder(
          builder: (BuildContext context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: const [
                    Text(
                      'Hello',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Ahmed Mouatassim',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 20, top: 5, bottom: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 170), // 0.3 * 255 ≈ 77
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.person, color: Colors.deepPurpleAccent),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  // خانة البحث
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                            size: 25,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "My tasks",
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 151, 151, 151),
                          Color.fromARGB(255, 0, 0, 0)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                    shadows: const [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: tasks.map((task) => Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: ContinerTask(
                        text: task['task'],
                        color: task['isChecked']
                            ? const Color.fromRGBO(255, 255, 255, 1)
                            : const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContinerTask extends StatelessWidget {
  final String text;
  final Color color;

  const ContinerTask({
    super.key,
    required this.text,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: 350,
            height: 60, // زيادة ارتفاع الحاوية
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  SizedBox(
                    width: 45, // زيادة عرض مساحة المفتاح
                    height: 45, // زيادة ارتفاع مساحة المفتاح
                    child: CustomSwitch(),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 52,
        height: 32,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isChecked
              ? Color(0xFF6DD5A7)
              : Color(0xFFFF6B6B).withOpacity(0.8),
          boxShadow: [
            BoxShadow(
              color: isChecked
                  ? Color(0xFF6DD5A7).withOpacity(0.3)
                  : Color(0xFFFF6B6B).withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: Duration(milliseconds: 300),
              alignment:
                  isChecked ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    isChecked ? Icons.check : Icons.close,
                    size: 16,
                    color: isChecked ? Color(0xFF6DD5A7) : Color(0xFFFF6B6B),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
