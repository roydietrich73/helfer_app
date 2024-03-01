import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HelpOfferSearchScreen extends StatefulWidget {
  @override
  _HelpOfferSearchScreenState createState() => _HelpOfferSearchScreenState();
}

class _HelpOfferSearchScreenState extends State<HelpOfferSearchScreen> {
  TextEditingController _searchController = TextEditingController();
  Stream<QuerySnapshot>? _helpOffersStream;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    if (_searchController.text.isNotEmpty) {
      setState(() {
        _helpOffersStream = FirebaseFirestore.instance
            .collection('help_offers')
            .where('category', isEqualTo: _searchController.text)
            .snapshots();
      });
    } else {
      setState(() {
        _helpOffersStream = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hilfsangebote suchen'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Kategorie eingeben',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: _buildHelpOfferList(),
          ),
        ],
      ),
    );
  }

  Widget _buildHelpOfferList() {
    if (_helpOffersStream == null) {
      return Center(
        child: Text('Geben Sie eine Kategorie ein, um zu suchen.'),
      );
    } else {
      return StreamBuilder<QuerySnapshot>(
        stream: _helpOffersStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Fehler beim Laden der Daten'),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.data!.docs.isEmpty) {
            return Center(
              child: Text('Keine Hilfsangebote gefunden.'),
            );
          }

          return ListView(
            children: snapshot.data!.docs.map((doc) {
              Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
              return ListTile(
                title: Text(data['title']),
                subtitle: Text(data['description']),
                // Hier können weitere Details zu den Hilfsangeboten angezeigt werden
                // z. B. Autor, Zeitstempel usw.
                onTap: () {
                  // Hier können Sie die gewünschte Aktion implementieren
                  // wenn auf ein Hilfsangebot in der Liste geklickt wird
                },
              );
            }).toList(),
          );
        },
      );
    }
  }
}
