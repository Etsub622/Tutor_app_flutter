import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Tutor/screen/userPage.dart';

class User {
  final String username;
  final String email;
  final String urlAvatar;

  User({required this.username, required this.email, required this.urlAvatar});
}

class TutorPage extends StatefulWidget {
  const TutorPage({super.key});

  @override
  State<TutorPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorPage> {
  List<User> users = [
    User(
        username: 'abcd',
        email: 'abcd@gmail.com',
        urlAvatar: 'https://i.pinimg.com/550x/a0/18/de/a018de300788d7d0d2a7ac6412ea86ac.jpg'),

    User(
        username: 'abd',
        email: 'abcd@gmal.com',
        urlAvatar: 'https://variety.com/wp-content/uploads/2022/12/Screen-Shot-2022-12-06-at-2.58.14-PM.png?w=1000&h=563&crop=1&resize=910%2C511'), 
         User(
        username: 'abcd',
        email: 'abcd@gmail.com',
        urlAvatar: 'https://i.pinimg.com/550x/a0/18/de/a018de300788d7d0d2a7ac6412ea86ac.jpg'),

    User(
        username: 'abd',
        email: 'abcd@gmal.com',
        urlAvatar: 'https://variety.com/wp-content/uploads/2022/12/Screen-Shot-2022-12-06-at-2.58.14-PM.png?w=1000&h=563&crop=1&resize=910%2C511'), 
         User(
        username: 'abcd',
        email: 'abcd@gmail.com',
        urlAvatar: 'https://i.pinimg.com/550x/a0/18/de/a018de300788d7d0d2a7ac6412ea86ac.jpg'),

    User(
        username: 'abd',
        email: 'abcd@gmal.com',
        urlAvatar: 'https://variety.com/wp-content/uploads/2022/12/Screen-Shot-2022-12-06-at-2.58.14-PM.png?w=1000&h=563&crop=1&resize=910%2C511'), 
         User(
        username: 'abcd',
        email: 'abcd@gmail.com',
        urlAvatar: 'https://i.pinimg.com/550x/a0/18/de/a018de300788d7d0d2a7ac6412ea86ac.jpg'),

    User(
        username: 'abd',
        email: 'abcd@gmal.com',
        urlAvatar: 'https://variety.com/wp-content/uploads/2022/12/Screen-Shot-2022-12-06-at-2.58.14-PM.png?w=1000&h=563&crop=1&resize=910%2C511'),   
         User(
        username: 'abcd',
        email: 'abcd@gmail.com',
        urlAvatar: 'https://i.pinimg.com/550x/a0/18/de/a018de300788d7d0d2a7ac6412ea86ac.jpg'),

    User(
        username: 'abd',
        email: 'abcd@gmal.com',
        urlAvatar: 'https://variety.com/wp-content/uploads/2022/12/Screen-Shot-2022-12-06-at-2.58.14-PM.png?w=1000&h=563&crop=1&resize=910%2C511'), 
         User(
        username: 'abcd',
        email: 'abcd@gmail.com',
        urlAvatar: 'https://i.pinimg.com/550x/a0/18/de/a018de300788d7d0d2a7ac6412ea86ac.jpg'),

    User(
        username: 'abd',
        email: 'abcd@gmal.com',
        urlAvatar: 'https://variety.com/wp-content/uploads/2022/12/Screen-Shot-2022-12-06-at-2.58.14-PM.png?w=1000&h=563&crop=1&resize=910%2C511'),  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'find your favourite tutor here!',
          style: TextStyle(
            color: Colors.amber,
          ),
        )),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28.0,
                backgroundImage: NetworkImage(user.urlAvatar),
              ),
              title: Text(user.username),
              subtitle: Text(user.email),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UserPage(user: user),
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
