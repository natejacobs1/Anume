class Bus {
  final String busNumber;
  final List<String> stops;

  Bus({
    required this.busNumber,
    required this.stops,
  });

  String get startPoint => stops.first;
  String get endPoint => stops.last;
  String get routeDescription => '$startPoint - $endPoint';
}

final List<Bus> allBuses = [
  Bus(
    busNumber: '1',
    stops: [
      'State Bank', 'Car Street', 'Mannagudda', 'Ladyhill', 'Chilimbi', 
      'Urva Stores', 'Kavoor', 'MCF colony', 'Kunjathbail'
    ],
  ),
  Bus(
    busNumber: '1A',
    stops: [
      'State Bank', 'Lalbagh', 'Urva Stores', 'Kulur', 'Thannir Bavi'
    ],
  ),
  Bus(
    busNumber: '1B',
    stops: [
      'State Bank', 'Car Street', 'Mannagudda', 'Ladyhill', 'Chilimbi',
      'Urva Stores', 'Kodikal'
    ],
  ),
  // Adding all other buses...
  Bus(
    busNumber: '2',
    stops: [
      'State Bank', 'Lalbagh', 'Ashoknagar', 'Baikampady', 'Suratkal', 'Mukka'
    ],
  ),
  // Continue with all buses...
  Bus(
    busNumber: '59',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 
      'Lalbagh', 'Ladyhill', 'Kuloor', 'Baikampady', 'Chitrapur', 
      'Hosabettu', 'Suratkal'
    ],
  ),
]; 