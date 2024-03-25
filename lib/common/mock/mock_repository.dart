/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:helfer_app/common/database_repository.dart';
import 'package:helfer_app/common/mock/mock_service.dart';
import 'package:helfer_app/listen/participant.dart';
import 'package:helfer_app/listen/user.dart';


abstract class MockRepository implements DatabaseRepository {
  final MockService _mockService;
  MockRepository(this._mockService);
  @override
  Future<void> createUserList(List<User> users) async {
    _mockService.create();
  }

  @override
  Future<void> deleteUserList() async {
    _mockService.deleteList();
  }

  @override
  Future<List<User>?> readUserList() async {
    return _mockService.getAll();
  }

  @override
  Future<bool> updateUserList(List<User> users) async {
    _mockService.updateList(users.cast<Participant>());
    return true;
  }
}*/