

import '../../listen/participant.dart';
import '../database_repository.dart';
import 'json_service.dart';

class JsonRepository implements DatabaseRepository {
  final JsonService _jsonService;

  JsonRepository(this._jsonService);
  @override
  Future<void> createParticipantList(List<Participant> participants) {
    return _jsonService.createParticipantList(participants);
  }

  @override
  Future<void> deleteParticipantList() {
    return _jsonService.deleteParticipantList();
  }

  @override
  Future<List<Participant>?> readParticipantList() {
    return _jsonService.readParticipantList();
  }

  @override
  Future<bool> updateParticipantList(List<Participant> participants) {
    return _jsonService.updateParticipantList(participants);
  }
}