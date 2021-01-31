import 'dart:developer';
// import 'dart:math';

import 'package:cog_app/predictor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:random_string/random_string.dart';

import 'package:flutter/services.dart';


class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int _region; //A
  int _place; //B
  int _educationLV; //C
  int _tv; //D
  int _wealth; //E
  int _contraceptive; //F
  int _visitHealthFac; //G
  int _getMoney; //H
  int _distance; //I
  int _husbandEduLV; //J
  final _bod = TextEditingController(); //K
  final _antenatal = TextEditingController(); //L
  // String _healthFac = null; // M

  bool isLoading;
  
  double textSize= 18;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      //  appBar: AppBar(),
      child: Center(
         child: Container(
          margin: EdgeInsets.all(10),
          child:ListView(
            children: [
              //A
              Text('Choose your region',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _region,
                items: [
                  //12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 31 32
                  DropdownMenuItem(child: Text('Paktika'), value: 12,),
                  DropdownMenuItem(child: Text('Paktya'), value: 13,),
                  DropdownMenuItem(child: Text('Khost'), value: 14,),
                  DropdownMenuItem(child: Text('Kunarha'), value: 15,),
                  DropdownMenuItem(child: Text('Nooristan'), value: 16,),
                  DropdownMenuItem(child: Text('Badakhshan'), value: 17,),
                  DropdownMenuItem(child: Text('Takhar'), value: 18,),
                  DropdownMenuItem(child: Text('Kunduz'), value: 19,),
                  DropdownMenuItem(child: Text('Samangan'), value: 20,),
                  DropdownMenuItem(child: Text('Balkh'), value: 21,),
                  DropdownMenuItem(child: Text('Sar-E-Pul'), value: 22,),
                  DropdownMenuItem(child: Text('Ghor'), value: 23,),
                  DropdownMenuItem(child: Text('Daykundi'), value: 24,),
                  DropdownMenuItem(child: Text('Urozgan'), value: 25,),
                  DropdownMenuItem(child: Text('Zabul'), value: 26,),
                  DropdownMenuItem(child: Text('Kandahar'), value: 27,),
                  DropdownMenuItem(child: Text('Jawzjan'), value: 28,),
                  DropdownMenuItem(child: Text('Faryab'), value: 29,),
                  DropdownMenuItem(child: Text('Badghis'), value: 31,),
                  DropdownMenuItem(child: Text('Badghis'), value: 32,),

                ], 
                onChanged: (value) {
                  setState(() {
                    _region = value;
                    print(_region);
                  });
                },
              ),

              //B
              Text('Choose your type of place of resident',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _place,
                items: [
                  DropdownMenuItem(child: Text('Urban'), value: 1),
                  DropdownMenuItem(child: Text('Rural'), value: 2),
                ], 
                onChanged: (value) {
                  setState(() {
                    _place = value;
                    print(_place);
                  });
                },
              ),

              //C
              Text('Choose your highest education level',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _educationLV,
                items: [
                  DropdownMenuItem(child: Text('No Education'), value: 0),
                  DropdownMenuItem(child: Text('Primary'), value: 1),
                  DropdownMenuItem(child: Text('Secondary'), value: 2),
                  DropdownMenuItem(child: Text('Higher than secondary'), value: 3),
                ], 
                onChanged: (value) {
                  setState(() {
                    _educationLV = value;
                    print(_educationLV);
                  });
                },
              ),

              //D
              Text('Do you have a television?',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _tv,
                items: [
                  DropdownMenuItem(child: Text('No'), value: 0),
                  DropdownMenuItem(child: Text('Yes'), value: 1),
                ], 
                onChanged: (value) {
                  setState(() {
                    _tv = value;
                    print(_tv);
                  });
                },
              ),

              //E
              Text('How about your family salary?',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _wealth,
                items: [
                  DropdownMenuItem(child: Text('Poorest'), value: 1),
                  DropdownMenuItem(child: Text('Poorer'), value: 2),
                  DropdownMenuItem(child: Text('Middle'), value: 3),
                  DropdownMenuItem(child: Text('Richer'), value: 4),
                  DropdownMenuItem(child: Text('Richest'), value: 5),
                ], 
                onChanged: (value) {
                  setState(() {
                    _wealth = value;
                    print(_wealth);
                  });
                },
              ),

              //F
              Text('Did you use the contraceptive pill frequently?',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _contraceptive,
                items: [
                  DropdownMenuItem(child: Text('Using modern method'), value: 1),
                  DropdownMenuItem(child: Text('Using traditional method'), value: 2),
                  DropdownMenuItem(child: Text('Non-user, Intends to use later'), value: 3),
                  DropdownMenuItem(child: Text('Does not intend to use'), value: 4),
                  DropdownMenuItem(child: Text('Never had sex'), value: 5),
                ], 
                onChanged: (value) {
                  setState(() {
                    _contraceptive = value;
                    print(_contraceptive);
                  });
                },
              ),

              //G
              Text('In last 12 months, Have you ever been visited the health facility?',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _visitHealthFac,
                items: [
                  DropdownMenuItem(child: Text('No'), value: 0),
                  DropdownMenuItem(child: Text('Yes'), value: 1),
                ], 
                onChanged: (value) {
                  setState(() {
                    _visitHealthFac = value;
                    print(_visitHealthFac);
                  });
                },
              ),

              //H
              Text('Is it hard to gather money for the treatment?',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _getMoney,
                items: [
                  DropdownMenuItem(child: Text('No problem'), value: 0),
                  DropdownMenuItem(child: Text('Big problem'), value: 1),
                  DropdownMenuItem(child: Text('Not a big problem'), value: 2),
                ], 
                onChanged: (value) {
                  setState(() {
                    _getMoney = value;
                    print(_getMoney);
                  });
                },
              ),

              //I
              Text('Is it hard to get to the health facility?',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _distance,
                items: [
                  DropdownMenuItem(child: Text('No problem'), value: 0),
                  DropdownMenuItem(child: Text('Big problem'), value: 1),
                  DropdownMenuItem(child: Text('Not a big problem'), value: 2),
                ], 
                onChanged: (value) {
                  setState(() {
                    _distance = value;
                    print(_distance);
                  });
                },
              ),

              //J
              Text('Choose your husband education level',style: TextStyle(fontSize: textSize),),
              DropdownButton(
                value: _husbandEduLV,
                items: [
                  DropdownMenuItem(child: Text('No Education'), value: 0),
                  DropdownMenuItem(child: Text('Primary'), value: 1),
                  DropdownMenuItem(child: Text('Secondary'), value: 2),
                  DropdownMenuItem(child: Text('Higher than secondary'), value: 3),
                ], 
                onChanged: (value) {
                  setState(() {
                    _husbandEduLV = value;
                    print(_husbandEduLV);
                  });
                },
              ),

              //K
              Text('Insert your birth order number',style: TextStyle(fontSize: textSize),),
              TextField(
                keyboardType: TextInputType.number,
                controller: _bod,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                ],
              ),

              //L
              Text('How many time you have an antenatal visit during pregnancy?',style: TextStyle(fontSize: textSize),),
              TextField(
                keyboardType: TextInputType.number,
                controller: _antenatal,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                ],
              ),

              // //M
              // Text('Place of delivery(Health facility)',style: TextStyle(fontSize: textSize),),
              // DropdownButton(
              //   value: _healthFac,
              //   items: [
              //     DropdownMenuItem(child: Text('Yes'), value: 'Yes'),
              //     DropdownMenuItem(child: Text('No'), value: 'No'),
              //   ], 
              //   onChanged: (value) {
              //     setState(() {
              //       _healthFac = value;
              //       print(_healthFac);
              //     });
              //   },
              // ),

              RaisedButton(
                onPressed: () async{
                  var result = await Predictor.predict({
                    'region': _region.toString(),
                    'place': _place.toString(),
                    'educationLV': _educationLV.toString(),
                    'TV': _tv.toString(),
                    'wealth': _wealth.toString(),
                    'contraceptive': _contraceptive.toString(),
                    'visit health facility': _visitHealthFac.toString(),
                    'get money': _getMoney.toString(),
                    'distance': _distance.toString(),
                    'husbandEduLv': _husbandEduLV.toString(),
                    'BOD': _bod.text.toString(),
                    'antenatal': _antenatal.text.toString(),
                  });
                  var prediction;

                  if(result.toString() == 'YES'){
                    prediction = 'Skilled Delivery';
                  }else{
                    prediction = 'Not Skilled Delivery';
                  }

                  result != null?
                  showAnimatedDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return ClassicGeneralDialogWidget(
                        titleText: 'Result',
                        // contentText: result.toString(),
                        contentText: prediction,
                        onPositiveClick: () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                    animationType: DialogTransitionType.fade,
                    curve: Curves.fastOutSlowIn,
                    duration: Duration(seconds: 0),
                  )
                  :
                  showAnimatedDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return ClassicGeneralDialogWidget(
                        titleText: 'Error',
                        // contentText: result.toString(),
                        contentText: 'Please answer all question',
                        onPositiveClick: () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                    animationType: DialogTransitionType.fade,
                    curve: Curves.fastOutSlowIn,
                    duration: Duration(seconds: 0),
                  );

                  log('region: '+ _region.toString());
                  log('place: ' + _place.toString());
                  log('educationLv: ' + _educationLV.toString());
                  log('TV: ' + _tv.toString());
                  log('wealth: ' + _wealth.toString());
                  log('contraceptive: ' + _contraceptive.toString());
                  log('visit health facility: ' + _visitHealthFac.toString());
                  log('get money: ' + _getMoney.toString());
                  log('distance: ' + _distance.toString());
                  log('husbandEduLv: ' + _husbandEduLV.toString());
                  log('BOD: ' + _bod.text);
                  log('antenatal: ' +_antenatal.text);

                  log(result.toString());
                },
                child: Text('Predict'),
              )
            ],
          ),
        )
      ),
    );
  }
}
