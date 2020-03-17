String secondReducer(String state, dynamic action) {
  if (action == ChangeFieldValue) {
    return action.payload;
  }

  return state;
}
