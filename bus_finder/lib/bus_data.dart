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
  Bus(
    busNumber: '2',
    stops: [
      'State Bank', 'Lalbagh', 'Ashoknagar', 'Baikampady', 'Suratkal', 'Mukka'
    ],
  ),
  Bus(
    busNumber: '2A',
    stops: [
      'State Bank', 'Lalbagh', 'Ashoknagar', 'Baikampady', 'Suratkal', 'Mukka', 'Sasihitlu'
    ],
  ),
  Bus(
    busNumber: '2C',
    stops: [
      'State Bank', 'Lalbagh', 'Ashoknagar', 'Baikampady', 'Baikampady Industrial Estate', 'Jokatte'
    ],
  ),
  Bus(
    busNumber: '2D',
    stops: [
      'State Bank', 'Lalbagh', 'Ashoknagar', 'Baikampady', 'Baikampady Industrial Estate', 'Jokatte', 'Parkodi'
    ],
  ),
  Bus(
    busNumber: '2E',
    stops: [
      'Kankanady', 'Jyothi', 'Lalbagh', 'Ashoknagar', 'Baikampady', 'Baikampady Industrial Estate', 'Jokatte', 'Kalavar', 'Bajpe'
    ],
  ),
  Bus(
    busNumber: '2F',
    stops: [
      'Kankanady', 'Jyothi', 'Lalbagh', 'Ashoknagar', 'Baikampady', 'Baikampady Industrial Estate', 'Jokatte', 'Kalavar', 'Bajpe'
    ],
  ),
  Bus(
    busNumber: '3',
    stops: [
      'State Bank', 'Falnir', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Kudupu', 'Vamanjoor', 'Moodushedde'
    ],
  ),
  Bus(
    busNumber: '3A',
    stops: [
      'State Bank', 'Jyothi', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Kudupu', 'Vamanjoor', 'Moodushedde'
    ],
  ),
  Bus(
    busNumber: '3B',
    stops: [
      'Mangaladevi', 'Kankanady', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Kudupu', 'Vamanjoor', 'Moodushedde'
    ],
  ),
  Bus(
    busNumber: '3D',
    stops: [
      'State Bank', 'Jyothi', 'Bunts Hostel', 'Kadri', 'Vamanjoor', 'Ulaibettu'
    ],
  ),
  Bus(
    busNumber: '4',
    stops: [
      'State Bank', 'Falnir', 'Kankanady', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Kulshekar Chowki'
    ],
  ),
  Bus(
    busNumber: '4A',
    stops: [
      'State Bank', 'Falnir', 'Kankanady', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Nanthur', 'Kulshekar', 'Kaikamba', 'Neermarga', 'Merlapadavu'
    ],
  ),
  Bus(
    busNumber: '4C',
    stops: [
      'State Bank', 'Falnir', 'Kankanady', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Nanthur', 'Kulshekar', 'Kaikamba', 'Neermarga'
    ],
  ),
  Bus(
    busNumber: '5',
    stops: [
      'State Bank', 'Jyothi', 'Bendoorwell', 'Kankanady', 'Nandigudda', 'Marnamikatta', 'Morgan Gate'
    ],
  ),
  Bus(
    busNumber: '6A',
    stops: [
      'State Bank', 'Jyothi', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Shaktinagar'
    ],
  ),
  Bus(
    busNumber: '6B',
    stops: [
      'State Bank', 'Falnir', 'Kankanady', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Shaktinagar'
    ],
  ),
  Bus(
    busNumber: '6C',
    stops: [
      'State Bank', 'Jyothi', 'Bunts Hostel', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Shaktinagar'
    ],
  ),
  Bus(
    busNumber: '7',
    stops: [
      'State Bank', 'Car Street', 'Alake', 'Mannagudda', 'Ladyhill', 'Chilimbi', 'Urva Stores'
    ],
  ),
  Bus(
    busNumber: '9A',
    stops: [
      'State Bank', 'Pandeshwar', 'Jeppu', 'Morgan Gate', 'Jeppupatna', 'Ekkur', 'Mugeru', 'Bajal', 'Bajal Pakkaladka', 'J.M. Road'
    ],
  ),
  Bus(
    busNumber: '9B',
    stops: [
      'State Bank', 'Jyothi', 'Pumpwell', 'Ekkur', 'Mugeru', 'Bajal', 'Bajal Pakkaladka', 'J.M. Road'
    ],
  ),
  Bus(
    busNumber: '10A',
    stops: [
      'State Bank', 'Balmatta', 'Jyothi', 'Kankanady', 'Pumpwell', 'Nagori', 'Padil', 'Kannurbettu', 'Adyar', 'Adyar Launch Jetty'
    ],
  ),
  Bus(
    busNumber: '10B',
    stops: [
      'State Bank', 'Jyothi', 'Balmatta', 'Kankanady', 'Pumpwell', 'Nagori', 'Padil', 'Kannurbettu', 'Adyar', 'Adyar Launch Jetty'
    ],
  ),
  Bus(
    busNumber: '11A',
    stops: [
      'State Bank', 'Falnir', 'Kankanady', 'Nagori', 'Garodi', 'Padil', 'Kannurbettu'
    ],
  ),
  Bus(
    busNumber: '11B',
    stops: [
      'State Bank', 'Falnir', 'Kankanady', 'Nagori', 'Garodi', 'Padil', 'Jalligudde'
    ],
  ),
  Bus(
    busNumber: '12A',
    stops: [
      'State Bank', 'Jyothi', 'Bunts Hostel', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Kudupu', 'Vamanjoor', 'Gurupura', 'Kaikamba', 'Addoor', 'Polali'
    ],
  ),
  Bus(
    busNumber: '12B',
    stops: [
      'State Bank', 'Jyothi', 'Bunts Hostel', 'Mallikatte', 'Kadri', 'Bikkarnakatta', 'Kulshekar', 'Kudupu', 'Vamanjoor', 'Gurupura', 'Kaikamba', 'Addoor', 'Polali', 'Kolthamajal'
    ],
  ),
  Bus(
    busNumber: '13',
    stops: [
      'State Bank', 'Car Street', 'Mannagudda', 'Ladyhill', 'Chilimbi', 'Urva Stores'
    ],
  ),
  Bus(
    busNumber: '13A',
    stops: [
      'State Bank', 'Car Street', 'Mannagudda', 'Ladyhill', 'Chilimbi', 'Urva Stores', 'Kottara'
    ],
  ),
  Bus(
    busNumber: '13C',
    stops: [
      'State Bank', 'K.S. Rao Road', 'Lalbagh', 'Ladyhill', 'Kuloor', 'Kudremukh Housing Colony', 'Hudco Colony', 'Govt. Womens  polytechnic', 'Govt. Quarters', 'Kavoor', 'Bondel'
    ],
  ),
  Bus(
    busNumber: '13D',
    stops: [
      'State Bank', 'K.S. Rao Road', 'Lalbagh', 'Ladyhill', 'Kuloor', 'Kudremukh Housing Colony', 'Hudco Colony', 'Govt. Womens  polytechnic', 'Govt. Quarters', 'Kavoor', 'Bondel', 'Padangady', 'Pacchanady Beggari Colony'
    ],
  ),
  Bus(
    busNumber: '13E',
    stops: [
      'Mangaladevi', 'Bendoorwell', 'Jyothi', 'Lalbagh', 'Ladyhill', 'Kuloor', 'Kudremukh Housing Colony', 'Hudco Colony', 'Govt. Womens  polytechnic', 'Govt. Quarters', 'Kavoor', 'Bondel'
    ],
  ),
  Bus(
    busNumber: '14A',
    stops: [
      'State Bank', 'Jyothi', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Nanthur', 'Akashavani', 'K.P.T', 'Yeyyadi', 'Konchadi', 'Padangady', 'Bondel'
    ],
  ),
  Bus(
    busNumber: '14B',
    stops: [
      'State Bank', 'Falnir', 'Bendoorwell', 'Mallikatte', 'Kadri', 'Nanthur', 'Akashavani', 'K.P.T', 'Yeyyadi', 'Konchadi', 'Padangady', 'Bondel'
    ],
  ),
  Bus(
    busNumber: '14C',
    stops: [
      'Mangaladevi', 'Morgan Gate', 'Attavara', 'Yemmekere', 'Nandigudda', 'Kankanady', 'Mallikatte', 'Kadri', 'Nanthur', 'Akashavani', 'K.P.T', 'Yeyyadi', 'Konchadi', 'Padangady', 'Bondel'
    ],
  ),
  Bus(
    busNumber: '15',
    stops: [
      'Mangaladevi', 'Morgan Gate', 'Nandigudda', 'Kankanady', 'Mallikatte', 'Kadri Market', 'Nanthur', 'Akashavani', 'Bejai', 'KSRTC Bus Stand', 'Bharat Mall', 'Lalbagh', 'Ladyhill', 'Kuloor', 'Baikampady', 'Surathkal'
    ],
  ),
  Bus(
    busNumber: '15A',
    stops: [
      'Mangaladevi', 'Morgan Gate', 'Nandigudda', 'Kankanady', 'Mallikatte', 'Kadri Market', 'Nanthur', 'Akashavani', 'Bejai', 'KSRTC Bus Stand', 'Bharat Mall', 'Lalbagh', 'Ladyhill', 'Kuloor', 'Baikampady', 'Surathkal', 'Krishnapur', 'Katipalla'
    ],
  ),
  Bus(
    busNumber: '15B',
    stops: [
      'Mangaladevi', 'Morgan Gate', 'Nandigudda', 'Kankanady', 'Mallikatte', 'Kadri Market', 'Nanthur', 'Akashavani', 'Bejai', 'KSRTC Bus Stand', 'Bharat Mall', 'Lalbagh', 'Ladyhill', 'Kuloor', 'Baikampady', 'Surathkal', 'Krishnapur', 'Katipalla', 'Chelairpadavu'
    ],
  ),
  Bus(
    busNumber: '16',
    stops: [
      'State Bank', 'Mission Street', 'Azizzudin Road', 'Kandathpalli', 'Mandi', 'Gokarnath Temple', 'Kudroli', 'Bokkapatna', 'Boloor', 'Sulthan Battery'
    ],
  ),
  Bus(
    busNumber: '16A',
    stops: [
      'State Bank', 'Car Street', 'Alake', 'Kudroli', 'Bokkapatna', 'Boloor', 'Sulthan Battery'
    ],
  ),
  Bus(
    busNumber: '17',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Saibeen Complex', 'Bharat Mall', 'KSRTC Bus Stand', 'Kapikad', 'Balebail', 'Kottara Cross', 'Kuntikana', 'Konchadi', 'Mullakadu', 'Kavoor', 'Maravoor', 'Kunjathbail'
    ],
  ),
  Bus(
    busNumber: '17A',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Saibeen Complex', 'Bharat Mall', 'KSRTC Bus Stand', 'Kapikad', 'Balebail', 'Kottara Cross', 'Kuntikana', 'Konchadi', 'Mullakadu', 'Kavoor', 'Maravoor', 'Kunjathbail'
    ],
  ),
  Bus(
    busNumber: '17B',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Saibeen Complex', 'Bharat Mall', 'KSRTC Bus Stand', 'Kapikad', 'Balebail', 'Kottara Cross', 'Kuntikana', 'Konchadi', 'Mullakadu', 'Kavoor', 'Maravoor', 'Kunjathbail'
    ],
  ),
  Bus(
    busNumber: '18',
    stops: [
      'State Bank', 'Pandeshwar', 'Hoige Bazar', 'Bolar', 'Jeppu Market', 'Morgan Gate'
    ],
  ),
  Bus(
    busNumber: '19',
    stops: [
      'State Bank', 'Hampankatta', 'Jyothi', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Saibeen Complex', 'Bharat Mall', 'KSRTC Bus Stand', 'Bejai', 'K.P.T', 'Yeyyadi', 'Konchadi', 'Padavinangadi', 'Bondel', 'Pacchanady'
    ],
  ),
  Bus(
    busNumber: '21',
    stops: [
      'State Bank', 'Jyothi', 'Bunts Hostel', 'Mallikatte', 'Kadri', 'Nanthur', 'Bikkarnakatta', 'Kulshekar', 'Kaikamba', 'Neermarga'
    ],
  ),
  Bus(
    busNumber: '22',
    stops: [
      'State Bank', 'Jyothi', 'Bunts Hostel', 'Mallikatte', 'Nanthur', 'Bikkarnakatta', 'Kulshekar', 'Vamanjoor', 'Gurupura', 'Kaikamba', 'Bajpe'
    ],
  ),
  Bus(
    busNumber: '22A',
    stops: [
      'State Bank', 'Jyothi', 'Bunts Hostel', 'Mallikatte', 'Nanthur', 'Bikkarnakatta', 'Kulshekar', 'Vamanjoor', 'Gurupura', 'Kaikamba', 'Bajpe', 'Bajpe Aerodrome'
    ],
  ),
  Bus(
    busNumber: '23',
    stops: [
      'State Bank', 'Jyothi', 'Balmatta', 'Kankanady', 'Pumpwell', 'Nagori', 'Garodi', 'Padil', 'Faisalnagar'
    ],
  ),
  Bus(
    busNumber: '27',
    stops: [
      'State Bank', 'Attavar', 'Nandigudda', 'Marnamikatta', 'Mangaladevi'
    ],
  ),
  Bus(
    busNumber: '27A',
    stops: [
      'State Bank', 'Attavar', 'Nandigudda', 'Marnamikatta', 'Mangaladevi', 'Mulihitlu'
    ],
  ),
  Bus(
    busNumber: '29',
    stops: [
      'State Bank', 'Pandeshwar', 'Yemmekere', 'Bolar', 'Jeppu Market', 'Morgan Gate'
    ],
  ),
  Bus(
    busNumber: '30',
    stops: [
      'State Bank', 'Jyothi', 'Balmatta', 'Kankanady', 'Mallikatte', 'Kadri', 'Nanthur', 'Bikkarnakatta', 'Maroli', 'Padil'
    ],
  ),
  Bus(
    busNumber: '30A',
    stops: [
      'State Bank', 'Jyothi', 'Balmatta', 'Kankanady', 'Mallikatte', 'Kadri', 'Nanthur', 'Bikkarnakatta', 'Maroli', 'Padil', 'Kannurbettu', 'Adyar'
    ],
  ),
  Bus(
    busNumber: '30B',
    stops: [
      'State Bank', 'Jyothi', 'Balmatta', 'Kankanady', 'Mallikatte', 'Kadri', 'Nanthur', 'Bikkarnakatta', 'Maroli', 'Padil', 'Kannurbettu', 'Adyar', 'Adyar Launch Jetty'
    ],
  ),
  Bus(
    busNumber: '31',
    stops: [
      'State Bank', 'PVS', 'Canara College', 'Empire Mall', 'Ballalbagh', 'Mannagudda', 'Urva Market', 'Shediguri'
    ],
  ),
  Bus(
    busNumber: '31A',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Canara College', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Urva Market', 'Ashoknagar'
    ],
  ),
  Bus(
    busNumber: '31B',
    stops: [
      'State Bank', 'Car Street', 'Mannagudda', 'Urva Market', 'Ashoknagar', 'Dombel'
    ],
  ),
  Bus(
    busNumber: '33',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Saibeen Complex', 'Bharat Mall', 'KSRTC Bus Stand', 'Kapikad', 'Balebail', 'Kottara Cross', 'Kuntikana', 'Derebail', 'Konchadi', 'Akashbhavan'
    ],
  ),
  Bus(
    busNumber: '37',
    stops: [
      'State Bank', 'Jyothi', 'Balmatta', 'Kankanady', 'Mallikatte', 'Kadri', 'Nanthur', 'Bikkarnakatta', 'Maroli', 'Padil'
    ],
  ),
  Bus(
    busNumber: '41A',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Kuloor', 'Baikampady', 'Surathkal', 'Krishnapur', 'Katipalla', 'Chelairpadavu'
    ],
  ),
  Bus(
    busNumber: '42',
    stops: [
      'State Bank', 'Balmatta', 'Jyothi', 'Kankanady', 'Pumpwell', 'Thokkottu', 'Kotekar', 'Beeri', 'Talapady'
    ],
  ),
  Bus(
    busNumber: '43',
    stops: [
      'State Bank', 'Balmatta', 'Jyothi', 'Kankanady', 'Pumpwell', 'Thokkottu', 'Kotekar', 'Beeri', 'Talapady', 'Kinya'
    ],
  ),
  Bus(
    busNumber: '44A',
    stops: [
      'State Bank', 'Balmatta', 'Jyothi', 'Kankanady', 'Pumpwell', 'Thokkottu', 'Ullal', 'Someshwar'
    ],
  ),
  Bus(
    busNumber: '44B',
    stops: [
      'State Bank', 'Balmatta', 'Jyothi', 'Kankanady', 'Pumpwell', 'Thokkottu', 'Kotekar', 'Eliaradavu'
    ],
  ),
  Bus(
    busNumber: '44C',
    stops: [
      'State Bank', 'Balmatta', 'Jyothi', 'Kankanady', 'Pumpwell', 'Thokkottu', 'Ullal', 'Ullal Launch Jetty'
    ],
  ),
  Bus(
    busNumber: '44D',
    stops: [
      'State Bank', 'Balmatta', 'Jyothi', 'Kankanady', 'Pumpwell', 'Thokkottu', 'Ullal', 'Kotepura'
    ],
  ),
  Bus(
    busNumber: '45',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Krishnapur', 'Katipalla'
    ],
  ),
  Bus(
    busNumber: '45A',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Krishnapur', 'Katipalla', 'Chokkabettu'
    ],
  ),
  Bus(
    busNumber: '45B',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Krishnapur', 'Katipalla', 'Chokkabettu'
    ],
  ),
  Bus(
    busNumber: '45C',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Krishnapur', 'Katipalla', 'Mangalpete', 'Kaikamba'
    ],
  ),
  Bus(
    busNumber: '45D',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Krishnapur', 'Katipalla', 'Mangalpete', 'MRPL', 'Kuthethur'
    ],
  ),
  Bus(
    busNumber: '45E',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Krishnapur', 'Katipalla', 'Mangalpete', 'MRPL', 'Kaithakurneri'
    ],
  ),
  Bus(
    busNumber: '45F',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Krishnapur', 'Katipalla', 'Kaikamba'
    ],
  ),
  Bus(
    busNumber: '45G',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Mason Road', 'Janatha Colony'
    ],
  ),
  Bus(
    busNumber: '45H',
    stops: [
      'State Bank', 'K.S. Rao Road', 'PVS', 'Empire Mall', 'Ballalbagh', 'Lalbagh', 'Ladyhill', 'Chilimbi', 'Urva Store', 'Kottara Chowki', 'Kuloor', 'Panambur', 'Suratkal', 'Kana', 'Mason Road', 'Janatha Colony'
    ],
  )
];