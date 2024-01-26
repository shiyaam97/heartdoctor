import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: Text("Heart Doctor"),
          backgroundColor: Color.fromRGBO(35, 150, 243, 100)
          ,

        ),
        body: HeartDoctor(),
      ),
    );
  }
}

class HeartDoctor extends StatefulWidget {
  const HeartDoctor({Key? key}) : super(key: key);

  @override
  State<HeartDoctor> createState() => _HeartDoctorState();
}

class _HeartDoctorState extends State<HeartDoctor> {
  String? gender;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/heartdis1.png"),
            fit: BoxFit.cover,
          ),),
        padding: EdgeInsets.all(12.0),
        child:Form(
          key:_formKey,
          child: Container(
            color: Colors.white60,
            child: ListView(
              children: [
                Center(child: Text("Heart Doctor",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),


                SizedBox(
                  width: 200,
                  child: TextFormField(

                    obscureText: false,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(),
                      labelText: 'chest pain type (4 values)',
                      hintText: 'chest pain type (4 values)',
                    ),
                    // controller: prodctName,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Row(
                  children: [
                    Text("Gender",style: TextStyle(fontSize: 17),),

                    Expanded(
                      child: RadioListTile(
                        title: Text("Male"),
                        value: "male",
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ),

                    Expanded(
                      child: RadioListTile(
                        title: Text("Female"),
                        value: "female",
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ),


                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'Age',
                            hintText: 'Enter Product Age',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'serum cholestoral',
                            hintText: 'serum cholestoral(mg/dl)',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'fasting blood sugar',
                            hintText: 'fasting blood sugar > 120 mg/dl',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'electrocardiographic results',
                            hintText: 'resting electrocardiographic results (values 0,1,2)',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'maximum heart rate achieved',
                            hintText: 'maximum heart rate achieved',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'exercise induced angina',
                            hintText: 'exercise induced angina',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'oldpeak ',
                            hintText: 'oldpeak ',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'slope ST segment',
                            hintText: 'he slope of the peak exercise ST segment',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'number of major vessels (0-3) colored by flourosopy',
                            hintText: 'number of major vessels (0-3) colored by flourosopy',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(

                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            labelText: 'thal: 0 = normal; 1 = fixed defect; 2 = reversable defect',
                            hintText: 'thal: 0 = normal; 1 = fixed defect; 2 = reversable defect',
                          ),
                          // controller: prodctName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20,),

                ElevatedButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (_) {
                          return   AlertDialog(
                            title: Text('Heart Doctor'),		 // To display the title it is optional
                            content: Text('Your Heart Healthy but you can check with the doctor'), // Message which will be pop up on the screen
                            // Action widget which will provide the user to acknowledge the choice
                            actions: [

                              ElevatedButton(
                                // textColor: Colors.black,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );

                          // return ResetPassword();
                        });
                    print("hi");
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }else{
                    print("hello");



                }
                }, child: Text("Test"))




              ],
            ),
          ),
        ));
  }
}

