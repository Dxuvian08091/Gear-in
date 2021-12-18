import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearin/Screens/loading_indicator.dart';
import 'package:gearin/Screens/login.dart';
import 'Screens/campaign.dart';
import 'Screens/history.dart';
import 'Screens/home.dart';
import 'Screens/more.dart';
import 'Screens/notification.dart';
import 'Screens/sign_up.dart';
import 'bloc/stream_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StreamBloc>(
      create: (context) => StreamBloc(),
      child: MaterialApp(
        home: BlocBuilder<StreamBloc, StreamState>(builder: (context, state) {
          if (state is StreamLogin) {
            return const LoginWidget();
          }
          if (state is StreamSignUp) {
            return const SignUpWidget();
          }
          if (state is StreamHome) {
            return const HomeWidget();
          }
          if (state is StreamCampaign) {
            return const InboxCampaignWidget();
          }
          if (state is StreamNotification) {
            return const InboxNotificationWidget();
          }
          if (state is StreamHistory) {
            return const HistoryWidget();
          }
          if (state is StreamMore) {
           return const MoreWidget();
          }
          return const LoadingIndicator();
        }),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
      ),
    );
  }
}
