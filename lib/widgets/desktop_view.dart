
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class deskFlagCard extends StatelessWidget

{

   final String countryNameCard;
  final String countryInfoCard;
  final String cap, curr, rel;
  final String image;

  const deskFlagCard({
    super.key,
    required this.countryNameCard,
    required this.countryInfoCard,
    required this.cap,
    required this.curr,
    required this.rel,
    required this.image,
  });
  







  
@override
  Widget build(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;

   
double nameFontSize;// responsive font size
    double infoFontSize ;
  
if(screenWidth <768)
{
  nameFontSize = screenWidth*0.04;
  infoFontSize = screenWidth*0.03;
}
else if(screenWidth <1024)
{
  nameFontSize = screenWidth*0.03;
infoFontSize = screenWidth*0.02;
}
else{
  nameFontSize = screenWidth*0.02;
infoFontSize = screenWidth*0.02;
}
 

   return LayoutBuilder(

    builder: (context,Constraints){
      double widthLay = Constraints.maxHeight;
      return
        Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
     child: Column(
       mainAxisSize: MainAxisSize.min,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
      //For Image section
      Container(
       height: widthLay*0.4,
        decoration: BoxDecoration(
      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image))
        ),
      ),
     
     
     
          
     
      Container(
        height: widthLay*0.12,
      padding: EdgeInsets.all(5),
      alignment: Alignment(-0.9, -1),
     
       width: double.infinity,
       child: Text(countryNameCard,style: TextStyle(fontSize:nameFontSize ,fontWeight: FontWeight.bold),),
      ),
     
     Flexible(
   
       child: Padding(
       padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
         child: Align(
          alignment: Alignment.topLeft,
           child: Container
                (
           
              
                          // alignment: Alignment(-0.5,-0.1),
                     child: Positioned(
                     
                       child: Text(countryInfoCard,
                        softWrap: true,
                         maxLines: 3,
                         overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize:infoFontSize,)),
                     ),
                        
                ),
         ),
       ),
     ),
     
     
          Flexible(
            
            child: Container(
              height: widthLay,
              padding: EdgeInsets.all(screenWidth > 1000 ? 10 :6),
              margin: EdgeInsets.all(3),
              width: double.infinity,
              child: ElevatedButton(
                
                     style: ElevatedButton.styleFrom(
                       backgroundColor:Color.fromARGB(255, 231, 231, 231),
                      padding: EdgeInsets.all(12),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     ),
                     onPressed: (){}, child: FittedBox(child: Text("Explore More  🡢",style: TextStyle(fontSize: screenWidth<768 ?18:22),))),
            ),
          ),
     
       ],
     ),
     );

  }
   ) ;




    }
   
   
}   
   
   
   
   
   
   
