part of 'stream_bloc.dart';

@immutable
abstract class StreamEvent {}

class Login extends StreamEvent {}

class SignUp extends StreamEvent {}

class Home extends StreamEvent {}

class Campaign extends StreamEvent {}

class InboxNotification extends StreamEvent {}

class History extends StreamEvent {}

class More extends StreamEvent {}
