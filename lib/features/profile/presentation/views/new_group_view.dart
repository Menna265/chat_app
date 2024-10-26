import 'package:chat/features/profile/presentation/views/widgets/new_group_body.dart';
import 'package:flutter/material.dart';

class NewGroupView extends StatelessWidget {
  static const String routeName = "new-group-view";

  NewGroupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: NewGroupBody(),
    ));
  }
}
