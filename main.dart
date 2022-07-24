// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(ScoreApp());
// }

// class ScoreApp extends StatelessWidget {
//   const ScoreApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Score App",
//       home: const ScoreHome(),
//     );
//   }
// }

// class ScoreHome extends StatefulWidget {
//   const ScoreHome({Key? key}) : super(key: key);

//   @override
//   State<ScoreHome> createState() => _ScoreHomeState();
// }

// class _ScoreHomeState extends State<ScoreHome> {
//   int num = 0;
//   void increaseNum() {
//     setState(() {
//       num++;
//     });
//   }

//   void decreaseNum() {
//     setState(() {
//       num--;
//     });
//   }

//   void restNum() {
//     setState(() {
//       num = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepOrange,
//       appBar: AppBar(
//         title: const Text("Score App"),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.restore_outlined),
//         onPressed: restNum,
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 30,
//           ),
//           Center(
//             child: Text(
//               "Score is",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 50,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Center(
//             child: Text(
//               num.toString(),
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 125,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: Text("Increase"),
//                 onPressed: increaseNum,
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               ElevatedButton(
//                 child: Text("Decrease"),
//                 onPressed: decreaseNum,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main(){
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget{
  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome>{
  int num=0;
  int counter=0;
  String result=" ";
  
  void increase(){
    setState((){
      num++;
    });
  }
    void decrease(){
    setState((){
      num--;
    });
  }
    void restNum(){
    setState((){
      num=0;
    });
  }
   void start(){
     setState((){
        int number =num,div;
      bool pri=true;
      if(num<=1){
        result="Error value.";
      }
      else{
        for(div=2;div<=number/2;div++){
          if((number%div)==0){
            pri=false;
            break;
          }
        }
        if(pri){
          result="Prime Number.";
        }
        else{
          result="Not Prime Number.";
        }
      }
     });
   }
  

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
        appBar: AppBar(
          title: Text("Score App"),
          centerTitle: true,
        ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.restore_from_trash),
        onPressed:restNum,
      ),
      body: Column(
        children:[
          SizedBox(height:30,),
          Center(child:Text("Score is",
                            style:TextStyle(
                              color:Colors.black,
                              fontWeight:FontWeight.bold,
                              fontSize:35,
                            ),
                           ),
                ),
          SizedBox(height:30,),
          Center(child:Text(num.toString(),
                            style:TextStyle(
                              color:Colors.black,
                              fontWeight:FontWeight.bold,
                              fontSize:100,
                            ),
                           ),
                ),
          SizedBox(height:30,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
          children: [
            ElevatedButton(
            child: Text("Increase"),
              onPressed: increase,
            ),
            SizedBox(width:30,),
            ElevatedButton(
            child: Text("Decrease"),
              onPressed: decrease,
            ),
          ],
          ),
           SizedBox(height:30,),
          Center(child:Text(result.toString(),
                            style:TextStyle(
                              color:Colors.black,
                              fontWeight:FontWeight.bold,
                              fontSize:25,),),),
          SizedBox(height:30,),
          ElevatedButton(child:Text("Start"),
                        onPressed:start,
                        ),
        ],
      ),
    );
  }
}