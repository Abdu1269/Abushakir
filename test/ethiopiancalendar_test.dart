import 'package:flutter_test/flutter_test.dart';

import 'package:ethiopiancalendar/ethiopiancalendar.dart';

void main() {


  // Parameterized Constructors


  test('Testing Year on Parameterized Constructor', (){
    final ec = EthiopianCalendar(year: 2012, month: 07, day: 07);
    expect(ec.year, 2012);
  });

  test('Testing Month on Parameterized Constructor', (){
    final ec = EthiopianCalendar(year: 2012, month: 07, day: 07);
    expect(ec.month, 07);
  });

  //FIXME: Day is reduced by 1
  test('Testing Day on Parameterized Constructor', (){
    final ec = EthiopianCalendar(year: 2012, month: 07, day: 07);
    expect(ec.day, 07);
  });

  //FIXME: Day is reduced by 1
  test('Testing Date on Parameterized Constructor', (){
    final ec = EthiopianCalendar(year: 2012, month: 07, day: 07);
    expect(ec.dayGeez, "፯");
  });


  // Named Constructors (.parse)
  
  //FIXME: Day is reduced by 1
  test('Should Print the parsed Date and Time', () {
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.toString(), "2012-07-07 18:26:31.449");
  });

  test('Testing Year on Named Constructor', (){
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.year, 2012);
  });

  test('Testing Month on Named Constructor', (){
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.month, 07);
  });
  
  //FIXME: Day is reduced by 1
  test('Testing Day on Named Constructor', (){
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.day, 07);
  });

  //FIXEME: Day is reduced 1
  test('Testing Date with Named Constructor', (){
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.dayGeez, "፯");
  });

  //FIXME: Reason Unknown
  test('Testing Hour on Named Constructor', (){
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.hour, 18);
  });

  test('Testing Minute on Named Constructor', (){
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.minute, 26);

  });

  test('Testing Second on Named Constructor', (){
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.second, 31);
  });

  test('Testing Millisecond on Named Constructor', (){
    final ec = EthiopianCalendar.parse("2012-07-07 18:26:31.449");
    expect(ec.millisecond, 449);
  });



  // Named Constructors (.now)
  

  test('Testing Year on .now() Named Constructor', (){
    final ec = EthiopianCalendar.now();
    expect(ec.year, 2012);
  });

  test('Testing Month on .now() Named Constructor', (){
    final ec = EthiopianCalendar.now();
    expect(ec.month, 07);
  });
  
  test('Testing Month Geez on .now() Named Constructor', (){
    final ec = EthiopianCalendar.now();
    expect(ec.monthGeez, "መጋቢት");
  });

  test('Testing Day on .now() Named Constructor', (){
    final ec = EthiopianCalendar.now();
    expect(ec.day, 10);
  });

  test('Testing Day Geez on .now() Named Constructor', (){
    final ec = EthiopianCalendar.now();
    expect(ec.dayGeez, "፲");
  });

  test('Testing Hour on .now() Named Constructor', (){
    final ec = EthiopianCalendar.now();
    expect(ec.hour, 6);
  });

  test('Testing Minute on .now() Named Constructor', (){
    final ec = EthiopianCalendar.now();
    expect(ec.minute, DateTime.now().minute);

  });

  test('Testing Second on .now() Named Constructor', (){
    final ec = EthiopianCalendar.now();
    expect(ec.second, DateTime.now().second);
  });


  // BahireHasab


  test('Testing Abekte', (){
    final bh = BahireHasab();
    expect(bh.getAbekte(), 6);
  });

  test('Testing Metkih', (){
    final bh = BahireHasab();
    expect(bh.getMetkih(), 24);
  });

  test('Testing Nenewe', (){
    final bh = BahireHasab();
    expect(bh.getNenewe(), {'month': 'የካቲት', 'date': 2});
  });


  // getSingleBealOrTsom


  test("Testing 'ነነዌ' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ነነዌ"), {'month': 'የካቲት', 'date': 2});
  });
  test("Testing 'ዓቢይ ጾም' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ዓቢይ ጾም"), {'month': 'የካቲት', 'date': 16});
  });

  test("Testing 'ደብረ ዘይት' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ደብረ ዘይት"), {'month': 'መጋቢት', 'date': 13});
  });

  test("Testing 'ሆሣዕና' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ሆሣዕና"), {'month': 'ሚያዝያ', 'date': 4});
  });

  test("Testing 'ስቅለት' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ስቅለት"), {'month': 'ሚያዝያ', 'date': 9});
  });

  test("Testing 'ትንሳኤ' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ትንሳኤ"), {'month': 'ሚያዝያ', 'date': 11});
  });

  test("Testing 'ርክበ ካህናት' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ርክበ ካህናት"), {'month': 'ግንቦት', 'date': 11});
  });

  test("Testing 'ዕርገት' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ዕርገት"), {'month': 'ግንቦት', 'date': 20});
  });

  test("Testing 'ጰራቅሊጦስ' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ጰራቅሊጦስ"), {'month': 'ግንቦት', 'date': 30});
  });

  test("Testing 'ጾመ ሐዋርያት' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ጾመ ሐዋርያት"), {'month': 'ሰኔ', 'date': 1});
  });

  test("Testing 'ጾመ ድህነት' on getSingleBealOrTsom", (){
    final bh = BahireHasab();
    expect(bh.getSingleBealOrTsom("ጾመ ድህነት"), {'month': 'ሰኔ', 'date': 3});
  });

 
}
