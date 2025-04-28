import 'package:flutter_music_core/flutter_music_core.dart';

enum MusicalChord {
  major([MusicalInterval.majorThird, MusicalInterval.minorThird]),
  minor([MusicalInterval.minorThird, MusicalInterval.majorThird]),
  diminished([MusicalInterval.minorThird, MusicalInterval.minorThird]),
  augmented([MusicalInterval.majorThird, MusicalInterval.majorThird]),
  sus2([MusicalInterval.majorSecond, MusicalInterval.perfectFourth]),
  sus4([MusicalInterval.perfectFourth, MusicalInterval.majorSecond]),
  dominant7([MusicalInterval.majorThird, MusicalInterval.minorThird, MusicalInterval.minorThird]),
  major7([MusicalInterval.majorThird, MusicalInterval.minorThird, MusicalInterval.majorThird]),
  minor7([MusicalInterval.minorThird, MusicalInterval.majorThird, MusicalInterval.minorThird]),
  halfDiminished7([
    MusicalInterval.minorThird,
    MusicalInterval.minorThird,
    MusicalInterval.majorThird,
  ]),
  diminished7([MusicalInterval.minorThird, MusicalInterval.minorThird, MusicalInterval.minorThird]);

  final List<MusicalInterval> intervals;

  const MusicalChord(this.intervals);
}
