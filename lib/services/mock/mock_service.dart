import 'package:helfer_app/MyApp/participant.dart';

class MockService {
  List<Participant>? _participantList;

  void create() {
    _participantList ??= [];
  }

  void clearList() => _participantList?.clear();
  void updateList(List<Participant> participants) {
    _participantList?.addAll(participants);
  }

  void deleteList() => _participantList = null;
  List<Participant>? getAll() => _participantList;
}