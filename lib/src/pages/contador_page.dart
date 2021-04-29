import 'package:flutter/material.dart';



class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
}


class _ContadorPageState extends State <ContadorPage>{


  final _estiloText = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps', style: _estiloText),
            Text( '$_conteo', style: _estiloText),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }




  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
              onPressed: _resetConteo,
              child : Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
              onPressed: _removeConteo,
              child : Icon(Icons.remove),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
              child : Icon(Icons.add),
               onPressed: _addConteo,
        ),
      ],
    );
  }

  void _addConteo(){
    setState(() => _conteo++);
  }
  void _removeConteo(){
    setState(() => _conteo--);
  }
  void _resetConteo(){
    setState(() => _conteo = 0);
  }
}