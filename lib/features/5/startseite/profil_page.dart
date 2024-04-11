import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/5/startseite/rating_widget.dart';

class ProfilePage extends StatelessWidget {
  final String userId;

  const ProfilePage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Profil'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text('Benutzer nicht gefunden'));
          }
          Map<String, dynamic> userData =
              snapshot.data!.data() as Map<String, dynamic>;

          void submitRating(int rating, String comment) {
            if (kDebugMode) {
              print('Bewertung: $rating, Kommentar: $comment');
            }
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(userData['profileImageUrl']),
                ),
                const SizedBox(height: 20),
                Text('Name: ${userData['name']}'),
                Text('Anschrift: ${userData['address']}'),
                Text('Telefonnummer: ${userData['phone']}'),
                Text('E-Mail: ${userData['email']}'),
                Text('Besonderheiten: ${userData['specialties']}'),
                const SizedBox(height: 20),
                RatingWidget(onSubmit: submitRating),
              ],
            ),
          );
        },
      ),
    );
  }
}
