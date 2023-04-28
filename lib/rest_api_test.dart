import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsivedashboard/model/user.dart';
import 'package:responsivedashboard/services/user_api.dart';

class RestAPITest extends StatefulWidget {
  const RestAPITest({super.key});

  @override
  State<RestAPITest> createState() => _RestAPITestState();
}

class _RestAPITestState extends State<RestAPITest> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Rest API CALL"),
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              final email = user.email;
              // final color = user.gender == 'male' ? Colors.blue : Colors.red;
              return ListTile(
                title: Text(user.fullname),
                subtitle: Text(user.location.country),
              );
            }));
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
