import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class StudyGoal {
  StudyGoal(this.title, {this.isDone = false});
  final String title;
  bool isDone;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<StudyGoal> goals = [
    StudyGoal('Flutter 위젯 복습'),
    StudyGoal('Git 커밋 연습'),
    StudyGoal('과제 문서 작성', isDone: true),
  ];

  int get completedCount => goals.where((g) => g.isDone).length;
  int get remainingCount => goals.length - completedCount;

  void _toggleGoal(int index) {
    setState(() {
      goals[index].isDone = !goals[index].isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StudyGoal')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('완료 $completedCount / 남은 $remainingCount'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: goals.length,
              itemBuilder: (context, index) {
                final goal = goals[index];
                return ListTile(
                  leading: Icon(
                    goal.isDone
                        ? Icons.check_circle
                        : Icons.radio_button_unchecked,
                  ),
                  title: Text(
                    goal.title,
                    style: TextStyle(
                      decoration:
                          goal.isDone ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  onTap: () => _toggleGoal(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}