part of 'mock_factory.dart';

class _UserMocks {
  final DummyUtil dummyUtil;

  _UserMocks({
    required this.dummyUtil,
  });

  UserModel prepareUser() {
    return const UserModel(
      avatar: 'assets/mocks/user/avatar.png',
      email: 'forgweProsper@gmail.com',
      firstName: 'Fogwe',
      lastName: 'Prosper',
    );
  }

  UserNotificationsResponse prepareUserNotificationsResponse() {
    return UserNotificationsResponse(
      areNotificationsEnabled: dummyUtil.randomBool(),
    );
  }
}
