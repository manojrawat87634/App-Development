import 'package:crud_operation/models/employee.models.dart';
import 'package:crud_operation/service/employee.service.dart';
import 'package:flutter/material.dart';

class Addemployee extends StatefulWidget {
  final EmployeeModel? employee;

  const Addemployee({Key? key, this.employee}) : super(key: key);

  @override
  State<Addemployee> createState() => _AddemployeeState();
}

class _AddemployeeState extends State<Addemployee> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _ageController;
  late TextEditingController _dojController;

  @override
  void initState() {
    super.initState();

    _nameController =
        TextEditingController(text: widget.employee?.name ?? '');

    _emailController =
        TextEditingController(text: widget.employee?.email ?? '');

    _ageController =
        TextEditingController(text: widget.employee?.age ?? '');

    _dojController =
        TextEditingController(text: widget.employee?.doj ?? '');
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      EmployeeModel employee = EmployeeModel(
        id: widget.employee?.id,
        name: _nameController.text,
        email: _emailController.text,
        doj: _dojController.text,
        age: _ageController.text,
      );
  await EmployeeService().addUsers(employee);
      

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(widget.employee == null
              ? "Employee Added Successfully"
              : "Employee Updated Successfully"),
        ),
      );

      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _ageController.dispose();
    _dojController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.employee == null ? "Add Employee" : "Edit Employee"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty
                          ? "Name is required"
                          : null,
                ),
                const SizedBox(height: 16),

                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return "Enter valid email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                TextFormField(
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Age",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Age is required";
                    }
                    if (int.tryParse(value) == null) {
                      return "Enter valid age";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                TextFormField(
                  controller: _dojController,
                  decoration: const InputDecoration(
                    labelText: "Date of Joining (YYYY-MM-DD)",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty
                          ? "DOJ is required"
                          : null,
                ),
                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _submit,
                    child: Text(
                        widget.employee == null ? "Add" : "Update"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}