import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hello World',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {
                /*      ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'This is a snackBar...',
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
                    ),
                    backgroundColor: Colors.amberAccent,
                    duration: Duration(seconds: 1),
                  ),
                );*/
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        title: Text('Send Money'),
                        content: Text('Are you sure?'),
                      );
                    });
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
      body: Center(
        /* child: Text(
          'Hello Flutter, we are starting a new flutter prjoect today, Hello Flutter, we are starting a new flutter prjoect today, Hello Flutter, we are starting a new flutter prjoect today',
          textAlign: TextAlign.center,
          maxLines: 2,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            backgroundColor: Colors.amberAccent,
            color: Colors.lightBlueAccent,
            overflow: TextOverflow.ellipsis,
          ),
        ),*/
        //child: Icon(Icons.android, size: 84, color: Colors.lightBlue,),
        // child: Image.network('https://www.google.com/search?sca_esv=d1ba00635c671747&rlz=1C1KNTJ_enBD1066BD1066&sxsrf=ACQVn09CkBUeyY2ozzfKvhGooyv8wo08MQ:1711364522634&q=flutter&tbm=isch&source=lnms&prmd=ivsnmbz&sa=X&ved=2ahUKEwjHo8_ToY-FAxXEi2MGHQ-uBAsQ0pQJegQIDRAB&biw=1745&bih=828&dpr=1.1#imgrc=92ELpYnJd1QDWM'),
        //child: Image.asset('images/study_img.png', width: 5000, height: 5000,),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*       Text('Hello'),
            Text('Flutter'),
            Text('This is a Flutter Practice Project'),
            Text('From'),
            Text('Ostad'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Center(child: Text('This is ')),
                Text('Asif '),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range),
                        Text('Date: '),
                      ],
                    ),
                    Text('12-12-2024'),
                  ],
                )
              ],
            )*/
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                          width: 2,
                          color: Colors.green
                      )
                  ),
                  textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16)
              ),
              onPressed: () {
                print('Pressed');
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  Text('Press here'),
                ],
              ),
            ),

            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green,
                textStyle: TextStyle(fontSize: 24),
              ),
              onPressed: () {},
              child: Text(
                'TextButton',
              ),
            ),

            IconButton(
              onPressed: () {
                print('Tapped in icon button');
              },
              icon: Icon(
                Icons.add_circle,
                color: Colors.deepOrangeAccent,
              ),
            ),

            GestureDetector(
              onTap: () {
                print('on tap detected');
              },
              onDoubleTap: () {
                print('Double tap detected');
              },
              onLongPress: () {
                print('Long pressed');
              },
              child: Column(
                children: [
                  Text('sdfsdfsd'),
                  Icon(Icons.add_circle),
                  Row(
                    children: [
                      Text('This is a row')
                    ],
                  )
                ],
              ),
            ),

            InkWell(
              splashColor: Colors.orange,
              radius: 20,
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                print('on tap detected');
              },
              onDoubleTap: () {
                print('Double tap detected');
              },
              onLongPress: () {
                print('Long pressed');
              },
              child: Column(
                children: [
                  Text('sdfsdfsd'),
                  Icon(Icons.add_circle),
                  Row(
                    children: [
                      Text('This is a row')
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                // controller: TextEditingController(),
                // enabled: false,
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(fontSize: 24, color: Colors.orange),
                maxLength: 10,
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                    // label: Text('Email'),
                    labelText: 'Email',
                    labelStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 4, color: Colors.red)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 4, color: Colors.orange),
                        borderRadius: BorderRadius.circular(16)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 4, color: Colors.red)
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 4, color: Colors.grey)
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.add),
                    prefixIconColor: Colors.green,
                    // prefix: Column(
                    //   children: [
                    //     Icon(Icons.add),
                    //   ],
                    // ),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    suffixIconColor: Colors.red
                  // suffix: Column(
                  //   children: [],
                  // )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
