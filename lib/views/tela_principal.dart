import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){


      },
      backgroundColor: Colors.green [100],
      child:  Icon(Icons.add),
      
      ),
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          'Med Alert',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown[50],
        leading: Padding(
          padding: EdgeInsets.all(5.0),
          child: Image.asset('images/medAlert.png'),
        ),
      ),
      backgroundColor: Colors.brown[50],

      body: Padding(
        padding: EdgeInsets.all(30),
        child: Card(
          color: Colors.green[100],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.medication),

                title: Center(
                  child: Text(
                    'Próximo Alarme:  ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
