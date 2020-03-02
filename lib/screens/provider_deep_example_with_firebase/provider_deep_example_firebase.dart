import 'package:flutter/material.dart';
import 'package:flutter_example_app/screens/provider_deep_example_with_firebase/splash_page.dart';
import 'package:flutter_example_app/screens/provider_deep_example_with_firebase/user_info_page.dart';
import 'package:flutter_example_app/services/json_parsing_services/provider_deep_example_with_firebase/user_repository.dart';
import 'package:provider/provider.dart';
import 'login_page.dart';

class ProviderExampleWithFirebase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserRepository.instance(),
      child: Consumer(
        builder: (context, UserRepository user, _) {
          switch (user.status) {
            case Status.Uninitialized:
              return Splash();
            case Status.Unauthenticated:
              return LoginPage();
            case Status.Authenticating:
              return LoginPage();
            case Status.Authenticated:
              return UserInfoPage(user: user.user);
          }
        },
      ),
    );
  }
}
