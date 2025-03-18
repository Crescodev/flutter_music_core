import 'package:flutter_music_core/src/midi_note.dart';

enum Clef {
  treble('𝄞', 0, MidiNote(index: 3, octave: 4)),
  bass('𝄢', -.9, MidiNote(index: 5, octave: 2)),
  alto('𝄡', 0, MidiNote(index: 4, octave: 3)),
  tenor('𝄠', 0, MidiNote(index: 3, octave: 3));

  final String symbol;
  final double offsetYMultiplier;
  final MidiNote firstSpaceMidiNote;
  const Clef(this.symbol, this.offsetYMultiplier, this.firstSpaceMidiNote);

  static T when<T>(
    Clef clef, {
    required T Function() treble,
    required T Function() bass,
    required T Function() alto,
    required T Function() tenor,
  }) {
    switch (clef) {
      case Clef.treble:
        return treble();
      case Clef.bass:
        return bass();
      case Clef.alto:
        return alto();
      case Clef.tenor:
        return tenor();
    }
  }
}
