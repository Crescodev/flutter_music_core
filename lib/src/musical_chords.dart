import 'package:flutter_music_core/flutter_music_core.dart';

enum MusicalChord {
  major('Major', [MusicalInterval.majorThird, MusicalInterval.minorThird]),
  minor('Minor', [MusicalInterval.minorThird, MusicalInterval.majorThird]),
  diminished('Diminished', [MusicalInterval.minorThird, MusicalInterval.minorThird]),
  augmented('Augmented', [MusicalInterval.majorThird, MusicalInterval.majorThird]),
  sus2('Sus2', [MusicalInterval.majorSecond, MusicalInterval.perfectFourth]),
  sus4('Sus4', [MusicalInterval.perfectFourth, MusicalInterval.majorSecond]),
  dominant7('Dominant 7', [
    MusicalInterval.majorThird,
    MusicalInterval.minorThird,
    MusicalInterval.minorThird,
  ]),
  major7('Major 7', [
    MusicalInterval.majorThird,
    MusicalInterval.minorThird,
    MusicalInterval.majorThird,
  ]),
  minor7('Minor 7', [
    MusicalInterval.minorThird,
    MusicalInterval.majorThird,
    MusicalInterval.minorThird,
  ]),
  halfDiminished7('Half Diminished 7', [
    MusicalInterval.minorThird,
    MusicalInterval.minorThird,
    MusicalInterval.majorThird,
  ]),
  diminished7('Diminished 7', [
    MusicalInterval.minorThird,
    MusicalInterval.minorThird,
    MusicalInterval.minorThird,
  ]);

  final String name;
  final List<MusicalInterval> intervals;

  const MusicalChord(this.name, this.intervals);
}
