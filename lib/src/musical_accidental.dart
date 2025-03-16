enum MusicalAccidental {
  doubleFlat('𝄫', -2, 'Double Flat'),
  flat('♭', -1, 'Flat'),
  natural('♮', 0, 'Natural'),
  sharp('♯', 1, 'Sharp'),
  doubleSharp('𝄪', 2, 'Double Sharp');

  final String symbol;
  final int offset;
  final String name;

  const MusicalAccidental(this.symbol, this.offset, this.name);

  static MusicalAccidental? fromOffsetOrNull(int? offset) {
    switch (offset) {
      case -2:
        return MusicalAccidental.doubleFlat;
      case -1:
        return MusicalAccidental.flat;
      case 0:
        return null;
      case 1:
        return MusicalAccidental.sharp;
      case 2:
        return MusicalAccidental.doubleSharp;
      default:
        throw ArgumentError('Invalid accidental offset: $offset');
    }
  }
}
