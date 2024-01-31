import 'package:helfer_app/MyApp/participant.dart';
import 'package:helfer_app/services/database_repository.dart';
import 'package:helfer_app/services/mock/mock_service.dart';

class MockRepository implements DatabaseRepository {
  final MockService _mockService;
  MockRepository(this._mockService);
  @override
  Future<void> createParticipantList(List<Participant> participants) async {
    _mockService.create();
  }

  @override
  Future<void> deleteParticipantList() async {
    _mockService.deleteList();
  }

  @override
  Future<List<Participant>?> readParticipantList() async {
    return _mockService.getAll();
  }

  @override
  Future<bool> updateParticipantList(List<Participant> participants) async {
    _mockService.updateList(participants);
    return true;
  }
}