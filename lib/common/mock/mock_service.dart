import 'package:helfer_app/listen/participant.dart';
import 'package:helfer_app/listen/user.dart';

class MockService {
  List<User>? _userList;

  Iterable<User> get users => users;

  void create() {
    _userList ??= [];
  }

  void clearList() => _userList?.clear();
  void updateList(List<Participant> participants) {
    _userList?.addAll(users);
  }

  void deleteList() => _userList = null;
  List<User>? getAll() => _userList;
}
