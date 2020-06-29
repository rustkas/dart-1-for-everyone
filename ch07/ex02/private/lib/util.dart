library annotations;

/// Use when intentionally causing an error.
///
///     @IntentionalError('Demo when semi-colon is omitted')
///     var foo = "bar"
///
class IntentionalError {
  final String note;
  const IntentionalError([this.note]);
}
