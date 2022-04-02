import 'package:e_commereceapp/screen/screen/project_detail.dart';
import 'package:e_commereceapp/widgets/projects.dart';
import 'package:flutter/material.dart';
// import 'package:untitled/screen/screen/project_detail.dart';
// import 'package:untitled/widgets/projects.dart';

class ListViewHomePage extends StatelessWidget {
  static var length;

  const ListViewHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fawad'),
      ),
      body: ListView.builder(
          itemCount: ListViewProject.length,
          itemBuilder: (context, index) {
            Project project = ListViewProject[index];

            var arrow_forward_rounded;
            return Card(
                child: ListTile(
              title: Text(project.title),
              subtitle: Text(project.description),
              leading: Image.asset(project.image),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProjectDetail()));
              },
            ));
          }),
    );
  }
}
