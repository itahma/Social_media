
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/layout/cubit/cubit.dart';
import 'package:social/layout/cubit/state.dart';
import 'package:social/shared/styles/icon_broken.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialCubit, SocialStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var userModel = SocialCubit.get(context).userModel;
        var coverImage = SocialCubit.get(context).coverImage;
        var profileImage = SocialCubit.get(context).profileImage;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                IconBroken.Arrow___Left_2,
              ),
            ),
            title: Text(
              'Settings',
            ),

          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            SocialCubit.get(context).signOut(context);

                          },
                          child: Text('Log Out'),
                        ),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
