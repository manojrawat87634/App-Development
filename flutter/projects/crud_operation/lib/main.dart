
import 'package:crud_operation/service/employee.service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePage();

}
class _MyHomePage extends State<MyHomePage> {

  bool _isDeleting = false;

  Future<void> _deleteEmployee(String id) async {
    setState(() {
      _isDeleting = true;
    });

    await EmployeeService().deleteUser(id);

    setState(() {
      _isDeleting = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee List"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: EmployeeService().fetchUsers(),
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(
              child: Text("Something went wrong"),
            );
          }

          final employeeList = snapshot.data ?? [];

          if (employeeList.isEmpty) {
            return const Center(
              child: Text("No Employees Found"),
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              setState(() {}); // refresh page
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: employeeList.length,
              itemBuilder: (context, index) {

                final emp = employeeList[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(emp.name[0].toUpperCase()),
                    ),
                    title: Text(emp.name),
                    subtitle: Text(emp.email),
                    trailing: _isDeleting
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              _deleteEmployee(emp.id);
                            },
                          ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}