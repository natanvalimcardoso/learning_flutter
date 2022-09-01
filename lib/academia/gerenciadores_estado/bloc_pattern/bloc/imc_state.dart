// ignore_for_file: public_member_api_docs, sort_constructors_first
class ImcState {
  final double? imc;

  ImcState({
    this.imc,
  });
}

class ImcStateLoading extends ImcState {}

class ImcStateError extends ImcState {
  String message;
  ImcStateError({
    required this.message,
  });
}
