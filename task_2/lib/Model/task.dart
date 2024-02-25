class Task {
  final taskName;
  final bool isPinned;
  late final double taskProgress;
  List<dynamic> todos;

  Task(
      {required this.taskName,
      this.isPinned = false,
      this.taskProgress = 0,
      required this.todos});
}
