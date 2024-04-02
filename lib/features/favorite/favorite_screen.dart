import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helfer_app/config/colors.dart';
import 'package:helfer_app/features/bottom_navigation_bar/btn_nav_bar.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: btnNavBar(),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: btnColor2,
        title: const Text('Favorites'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('favorites').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          if (snapshot.data.documents.isEmpty) {
            return const Center(
              child: Text('Noch keine Favoriten.'),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) {
              DocumentSnapshot favorite = snapshot.data.documents[index];
              return ListTile(
                title: Text(favorite['name']),
                subtitle: Text(favorite['description']),
                // Hier weitere Anpassungen oder Aktionen für jeden Favoriten hinzufügen
              );
            },
          );
        },
      ),
    );
  }
}
