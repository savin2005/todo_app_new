class TaskProjects {
  String? title;
  String? subtitle;
  String? startdate;
  String? enddate;
  TaskProjects({
    required this.title,
    required this.subtitle,
    required this.startdate,
    required this.enddate,
  });
  static var projectslist = [
    TaskProjects(
        title: "Mobile App\nWireframe",
        subtitle: "Team Members",
        startdate: DateTime.now().toString(),
        enddate: "20 March"),
    TaskProjects(
        title: "Real Estate\nApp Design",
        subtitle: "Team Members",
        startdate: DateTime.now().toString(),
        enddate: "20 March"),
    TaskProjects(
        title: "Dashboard & App\nDesign",
        subtitle: "Team Members",
        startdate: DateTime.now().toString(),
        enddate: "20 March")
  ];
}
