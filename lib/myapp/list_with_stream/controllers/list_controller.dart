import 'package:learn_flutter/myapp/list_with_stream/events/empty_event.dart';
import 'package:learn_flutter/myapp/list_with_stream/events/list_event.dart';
import 'package:learn_flutter/myapp/list_with_stream/events/loading_event.dart';
import 'package:learn_flutter/myapp/list_with_stream/events/ready_event.dart';
import 'package:learn_flutter/myapp/list_with_stream/model/list_model.dart';

class ListController {
  List<ListModel> index;
  ListController({required this.index});

  Stream<ListEvent> start() async* {
    yield LoadingEvent();

    for (ListModel indexList in index) {
      for (int number = indexList.index; number >= 0; number--) {
        await Future.delayed(const Duration(seconds: 1));
        yield ReadyEvent(index: number);
      }
    }

    yield EmptyEvent();
  }
}
