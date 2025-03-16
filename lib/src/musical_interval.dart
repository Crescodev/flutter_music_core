enum MusicalInterval {
  diminishedSecond(0, 2, "Diminished Second"),
  perfectUnison(0, 1, "Perfect Unison"),
  augmentedUnison(1, 1, "Augmented Unison"),
  minorSecond(1, 2, "Minor Second"),
  majorSecond(2, 2, "Major Second"),
  augmentedSecond(3, 2, "Augmented Second"),
  minorThird(3, 3, "Minor Third"),
  majorThird(4, 3, "Major Third"),
  augmentedThird(5, 3, "Augmented Third"),
  diminishedFourth(4, 4, "Diminished Fourth"),
  perfectFourth(5, 4, "Perfect Fourth"),
  augmentedFourth(6, 4, "Augmented Fourth"),
  diminishedFifth(6, 5, "Diminished Fifth"),
  perfectFifth(7, 5, "Perfect Fifth"),
  augmentedFifth(8, 5, "Augmented Fifth"),
  minorSixth(8, 6, "Minor Sixth"),
  majorSixth(9, 6, "Major Sixth"),
  augmentedSixth(10, 6, "Augmented Sixth"),
  diminishedSeventh(9, 7, "Diminished Seventh"),
  minorSeventh(10, 7, "Minor Seventh"),
  majorSeventh(11, 7, "Major Seventh"),
  augmentedSeventh(12, 7, "Augmented Seventh"),
  diminishedOctave(11, 8, "Diminished Octave"),
  perfectOctave(12, 8, "Perfect Octave");

  final int semitones;
  final int degree;
  final String name;

  const MusicalInterval(this.semitones, this.degree, this.name);

  static List<MusicalInterval> get trainingIntervals => [
        MusicalInterval.perfectUnison,
        MusicalInterval.minorSecond,
        MusicalInterval.majorSecond,
        MusicalInterval.minorThird,
        MusicalInterval.majorThird,
        MusicalInterval.perfectFourth,
        MusicalInterval.augmentedFourth,
        MusicalInterval.perfectFifth,
        MusicalInterval.minorSixth,
        MusicalInterval.majorSixth,
        MusicalInterval.minorSeventh,
        MusicalInterval.majorSeventh,
        MusicalInterval.perfectOctave,
      ];
}
