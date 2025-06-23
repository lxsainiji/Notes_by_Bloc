import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_by_bloc/db_helper.dart';
import 'package:notes_by_bloc/notes_events.dart';
import 'package:notes_by_bloc/notes_state.dart';

class NotesViewBloc extends Bloc<AllEvents,editViewState>{
  DBHelper varDb=DBHelper.getInstance();
  NotesViewBloc():super(editViewState(editData: [])){
    on<InitialEditView>((event,emit)async{
      editViewState(editData:await varDb.editView(id: event.id));
    });
  }
}