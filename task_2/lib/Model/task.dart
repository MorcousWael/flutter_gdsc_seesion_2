import 'package:task_2/Model/todo.dart';

class Task {
  final String taskName;
  bool isPinned;
  late final double taskProgress;
  List<Todo> todos;

  Task({
    required this.taskName,
    required this.todos,
    this.isPinned = false,
    this.taskProgress = 0,
  });
  static List<Task> get mockUpTasks {
    return [
      Task(
        taskName: 'Study for finals',
        isPinned: true,
        todos: [
          Todo(
            todoName: 'Math',
            isFinished: true,
          ),
          Todo(todoName: 'Physics', isFinished: false),
          Todo(todoName: 'Chemistry', isFinished: false),
          Todo(todoName: 'Biology', isFinished: false),
        ],
      ),
      Task(
        taskName: 'Go to the gym',
        isPinned: true,
        todos: [
          Todo(
            todoName: 'Stretching',
            isFinished: true,
          ),
          Todo(todoName: 'Cardio', isFinished: false),
          Todo(todoName: 'Weights', isFinished: false),
        ],
      ),
      Task(
        taskName: 'Work on project',
        isPinned: true,
        todos: [
          Todo(
            todoName: 'Math',
            isFinished: true,
          ),
          Todo(todoName: 'Design', isFinished: false),
          Todo(todoName: 'Development', isFinished: false),
          Todo(todoName: 'Testing', isFinished: false),
          Todo(todoName: 'Deployment', isFinished: false),
        ],
      ),
    ];
  }
}
