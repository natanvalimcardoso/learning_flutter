class ImcState {
  final double? imc;

  ImcState({
     this.imc,
  });
}

class ImcStateLoading  extends ImcState{
  ImcStateLoading();
}

class ImcStateError extends ImcState{
  ImcStateError();
}


