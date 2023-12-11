class ChangePageIndexAction {
  final int index;

  ChangePageIndexAction(this.index);
}

int pageIndexReducer(int state, dynamic action) {
  if (action is ChangePageIndexAction) {
    return action.index;
  }
  return state;
}
