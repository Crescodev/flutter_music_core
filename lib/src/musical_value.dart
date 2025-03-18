import 'package:flutter/material.dart';
import 'package:flutter_music_core/src/midi_note.dart';
import 'package:flutter_music_core/src/musical_duration.dart';
import 'package:flutter_music_core/src/rhythmic_type.dart';

class MusicalValue {
  final RhythmicType type;
  final MusicalDuration duration;
  final List<MidiNote> _midiNotes;
  final Color? color;

  MusicalValue({
    this.type = RhythmicType.note,
    this.duration = MusicalDuration.quarter,
    this.color,
    List<MidiNote>? midiNotes,
  }) : _midiNotes =
           midiNotes ?? [MidiNote(index: 0, octave: 4)]
             ..sort((a, b) => a.midiNumber.compareTo(b.midiNumber));

  List<MidiNote> get midiNotes => _midiNotes;
}
