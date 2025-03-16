import 'package:flutter_music_core/src/rhythmic_type.dart';

enum MusicalDuration {
  whole(1),
  half(2),
  quarter(4),
  eighth(8),
  sixteenth(16),
  thirtySecond(32),
  sixtyFourth(64);

  final int value;

  const MusicalDuration(this.value);

  String symbol(RhythmicType type) {
    switch (type) {
      case RhythmicType.note:
        switch (this) {
          case MusicalDuration.whole:
            return '𝅝';
          case MusicalDuration.half:
            return '𝅗𝅥';
          case MusicalDuration.quarter:
            return '𝅘𝅥';
          case MusicalDuration.eighth:
            return '𝅘𝅥𝅮';
          case MusicalDuration.sixteenth:
            return '𝅘𝅥𝅯';
          case MusicalDuration.thirtySecond:
            return '𝅘𝅥𝅰';
          case MusicalDuration.sixtyFourth:
            return '𝅘𝅥𝅱';
        }
      case RhythmicType.rest:
        switch (this) {
          case MusicalDuration.whole:
            return '𝄻';
          case MusicalDuration.half:
            return '𝄼';
          case MusicalDuration.quarter:
            return '𝄽';
          case MusicalDuration.eighth:
            return '𝄾';
          case MusicalDuration.sixteenth:
            return '𝄿';
          case MusicalDuration.thirtySecond:
            return '𝅀';
          case MusicalDuration.sixtyFourth:
            return '𝅁';
        }
    }
  }
}
