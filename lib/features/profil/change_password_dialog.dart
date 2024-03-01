import 'package:flutter/material.dart';

class ChangePasswordDialog extends StatefulWidget {
  final Function(String) changePassword;

  const ChangePasswordDialog({required this.changePassword});

  @override
  _ChangePasswordDialogState createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  late bool _passwordsMatch;

  @override
  void initState() {
    super.initState();
    _passwordsMatch = true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Passwort ändern'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _newPasswordController,
            decoration: InputDecoration(labelText: 'Neues Passwort'),
            obscureText: true,
          ),
          TextField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(labelText: 'Passwort bestätigen'),
            obscureText: true,
            onChanged: (value) {
              setState(() {
                _passwordsMatch = value == _newPasswordController.text;
              });
            },
          ),
          if (!_passwordsMatch)
            Text(
              'Passwörter stimmen nicht überein',
              style: TextStyle(color: Colors.red),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Abbrechen'),
        ),
        ElevatedButton(
          onPressed: _passwordsMatch
              ? () {
                  widget.changePassword(_newPasswordController.text);
                  Navigator.of(context).pop();
                }
              : null,
          child: Text('Speichern'),
        ),
      ],
    );
  }
}
