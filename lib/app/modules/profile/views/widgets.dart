import 'package:flutter/material.dart';

class EditOptions extends StatelessWidget {
  const EditOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 48),
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.note_add_rounded),
            title: Text(
              'Update Status',
              style: TextStyle(fontSize: 22),
            ),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.note_add_rounded),
            title: Text(
              'Edit Profile',
              style: TextStyle(fontSize: 22),
            ),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.note_add_rounded),
            title: Text(
              'Change Theme',
              style: TextStyle(fontSize: 22),
            ),
            trailing: Text('Light'),
          ),
        ],
      ),
    );
  }
}

class FooterProfile extends StatelessWidget {
  const FooterProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Anonia',
            style: TextStyle(color: Colors.black87),
          ),
          Text(
            'V.1.0.0',
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
