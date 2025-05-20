import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:ostad_assignment02_flutter_project/widgets/desktop_view.dart';

void main() {
   runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  )
   );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  useInheritedMediaQuery: true,
  home: MyHomePage(),
);
  }

}
class MyHomePage extends StatelessWidget
{

  List<String> _countryFlag =[
    "/bd.jpeg",
    "/india.jpeg",
    "/turkey.jpeg",
    "/usa.jpeg",
   
    "/spain.jpeg",
    "/indo.jpeg",
    "/nepal.jpeg",
    "/malay.jpeg",
    "/pak.jpeg",
    "/tib.jpeg"
  ];
List<String> _religion=[
  "Islam",
  "Hinduism",
"Islam",
"Christianity",
"Christianity",
"Islam",
"Hinduism",
"Islam",
"Islam",
"Buddhism"
];
List<Map<String,String>> _CurrencyCapital=[
  {"Taka":"Dhaka"},
  {"Rupee":"Delhi",},
  {"Lira":"Ankara",},
  {"USD":"Washington",},
  {"Euro":"Madrid",},
  {"Rupiah":"Jakarta",},
  {"Rupee":"Kathmandu",},
  {"Ringit":"Kuala Lampur",},
  {"Rupee":"Islamabad",},
  {"Yuan":"Lasha"}

];
List<Map<String,String>> _Info =[
{"Bangladesh":"Land of rivers and resilient spirit."},
{"India":"Unity in diversity with ancient roots."},
{"Turkey":"Bridge between East and West civilizations."},
{"America":"Home of freedom, innovation, and dreams."},
{"Spain":"Flamenco, football, and historic global explorers."},
{"Indonesia":"World's largest island country"},
{"Nepal":"Home to Mount Everest and spiritual serenity."},
{"Malayasia":"Multicultural harmony and tropical beauty."},
{"Pakistan":"Land of peaks, poetry, and passion."},
{"Tibbet":"Spiritual roof of the world with peace.",}


];

  @override
  Widget build(BuildContext context) {
   double screenWidth  =MediaQuery.of(context).size.width;
int crossAxisCount = 2;
 if (screenWidth >= 1024) {
    crossAxisCount = 4; // Desktop
  } else if (screenWidth >= 768) {
    crossAxisCount = 3; // Tablet
  }

   return Scaffold(
    body: SafeArea(child:Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount,crossAxisSpacing: 5, mainAxisSpacing: 5,childAspectRatio: 0.75,),
         itemCount: _countryFlag.length,
         itemBuilder: (context,index){
          String countryFlagImage = _countryFlag[index];
          String countryName = _Info[index].keys.first;
          String countryInfo = _Info[index][countryName]!;
          String relegion = _religion[index];
          String currency =_CurrencyCapital[index].keys.first;
          String capital = _CurrencyCapital[index][currency]!;
        return deskFlagCard(countryNameCard: countryName, countryInfoCard: countryInfo, cap: capital, curr: currency, rel: relegion, image: countryFlagImage);
         },
         
         ),
    ) 
    
    ),
   );
  }
}


