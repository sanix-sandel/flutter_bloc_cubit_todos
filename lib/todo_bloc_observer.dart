

import 'package:bloc/bloc.dart';

class TodoBlocObserver extends BlocObserver{

  //called whenever an event is added to any bloc with the given bloc and event
  @override
  void onEvent(Bloc bloc, Object? event){
    super.onEvent(bloc, event);
    print('onEvent $event');
  }

  // called whenever a Change occurs in any bloc
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange $change');
  }

  //called whenever a transition occurs in any bloc with the given bloc and transition
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('onTransition $transition');
  }

  //called whenever an error occurs inside the bloc
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError $error');
    super.onError(bloc, error, stackTrace);
  }


}