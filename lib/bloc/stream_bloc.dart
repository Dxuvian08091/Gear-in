import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'stream_event.dart';
part 'stream_state.dart';

class StreamBloc extends Bloc<StreamEvent, StreamState> {
  StreamBloc() : super(StreamLogin()) {
    on<Login>((event, emit) async {
      emit(StreamLoading());
      emit(StreamLogin());
    });
    on<SignUp>((event, emit) {
      emit(StreamLoading());
      emit(StreamSignUp());
    });
    on<Home>((event, emit) {
      emit(StreamLoading());
      emit(StreamHome());
    });
    on<Campaign>((event, emit) {
      emit(StreamLoading());
      emit(StreamCampaign());
    });
    on<InboxNotification>((event, emit) {
      emit(StreamLoading());
      emit(StreamNotification());
    });
    on<History>((event, emit) {
      emit(StreamLoading());
      emit(StreamHistory());
    });
    on<SignUp>((event, emit) {
      emit(StreamLoading());
      emit(StreamHistory());
    });
  }
}
