import 'dart:ffi';

Map<String,double>  modd = {"Monday":4.0,"Tuesday":4.5,"Wednesday":3.0,"Thursday":3.5,"Friday":2.0,"Saturday":5.0,"Sunday":4.5};

double avgg = (modd["Monday"]!+modd["Tuesday"]!+modd["Wednesday"]!+modd["Thursday"]!+modd["Friday"]!+modd["Saturday"]!+modd["Sunday"]!)/7;