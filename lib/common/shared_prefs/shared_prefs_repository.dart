//export 'package:database_batch_3/features/crud/data/database_repository.dart';
import '../../listen/participant.dart';
import '../database_repository.dart';
import 'shared_prefs_service.dart';

class SharedPrefsRepository implements DatabaseRepository {
  final SharedPrefsService _sharedPrefsService;

  SharedPrefsRepository(this._sharedPrefsService);

  @override
  Future<void> createParticipantList(List<Participant> participants) async {
    return _sharedPrefsService.createParticipantList(participants);
  }

  @override
  Future<List<Participant>?> readParticipantList() async {
    return _sharedPrefsService.readParticipantList();
  }

  @override
  Future<bool> updateParticipantList(List<Participant> participants) async {
    return _sharedPrefsService.updateParticipantList(participants);
  }

  @override
  Future<void> deleteParticipantList() async {
    return _sharedPrefsService.deleteParticipantList();
  }
}
