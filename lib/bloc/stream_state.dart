part of 'stream_bloc.dart';

@immutable
abstract class StreamState {}

class StreamInitial extends StreamState {}

class StreamLoading extends StreamState {}

class StreamLogin extends StreamState {}

class StreamSignUp extends StreamState {}

class StreamHome extends StreamState {}

class StreamCampaign extends StreamState {}

class StreamNotification extends StreamState {}

class StreamHistory extends StreamState {}

class StreamMore extends StreamState {}
