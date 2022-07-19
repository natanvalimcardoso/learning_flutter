import 'list_event.dart';

class ReadyEvent implements ListEvent{
  final int index;
  ReadyEvent({required this.index});
}