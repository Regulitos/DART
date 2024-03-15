import 'dart:io';

void main () {
    //var lista [] = [1, 2, 3, 4, 5];
    //print(lista);
    /*print("hello world!");

    String cadena1 = "esto es una cadena";
    String cadena2 = "esto es otra cadena";

    print ("Cadena 1: "+cadena1+"\nCadena 2: " + cadena2); 

    int entero = 0;   
    double decimal=0.1;

    print ("entero: "+entero.toString()+"\n"+"decimal: "+decimal.toString());
    dynamic name = 10;
    print (name);*

    dynamic decision = true;
    decision = 1;
    decision = 1.1;

    print (decision);*

    var a;
    a=123;
    a="hi";
    a=true;
    print (a);*/

    /*var lista ={1,2,3,4};
    print (lista);

    dynamic lista0 ={1,2,3,4,5,6};
    print (lista0);

    dynamic lista1 = {"hola",1,2,3,4,5,6};
    print (lista1);

    List <int> listaNumeros = [1,2,3,4];
    print (listaNumeros);

    Set group;
    group = Set.from({"Lenguaje","Ingles"});
    group.add("matematicas");
    print (group);

    group.remove("matematicas");
    print (group);

    Map <String,dynamic> Persona = {
        'nombre':'Dav',
        'apellido':'Quick',
        'edad':19,
        'soltero':true

    };

    print (Persona);*

    print("persona plantillada para comite");
    Map <int,String> persona = {
        1 : 'Esteban',
        2 : 'Paula',
        3 : 'Edison',
    };
    print(persona);
    persona.addAll({8: 'David'});
    print(persona);*/

    /*print("Ingrese su nombre:");
    String nombre = stdin.readLineSync().toString();
    print("Hello!, $nombre \n Bienvenido a ADSO");*/

    /*print('sumando 2 numeros');
    print('Escriba el primer numero');
    double numero1 = double.parse(stdin.readLineSync().toString());

    print('Escriba el segundo numero');
    double numero2 = double.parse(stdin.readLineSync().toString());

    print('La suma de $numero1 + $numero2 es: ');
    print(numero1+numero2);*/

    /*var year;
    print('Ingrese un año');
    year = int.parse(stdin.readLineSync().toString());
    if(year >=2001){
        print('21st Century');
    }else{
        print('20th Century');
    }*/

    /*int vueltas = 1;

    while (vueltas<=5){
        print('vueltas $vueltas');
        vueltas++;
    }*/
    
    /*dynamic cuentaReg=10;
    do{
        print('Tiempo restante $cuentaReg');
        cuentaReg--;;
    }while(cuentaReg>0);*/

    /*for(var i=0; i<5; i++){
        print("Numero = $i + 1 )");
    }*/

    /*List <int> numeros = [1,2,3,4,5,6,7,8,9,10,11,12];
    numeros.forEach((x)=> print('accediendo al elemento $x'));*/


    /*
    for(int x in ){
        print(x);
    }*/

    /*Map <String, double> mapa = {

        'base':1.84,
        'altura':1.95,
        'area':2.10,
        'volumen':1.90
    };
    mapa.values.forEach((valor)=>print('valor del mapa: $valor'));
    mapa.keys.forEach((llave)=>print('la clace $llave'));

    mapa.forEach((llave,valor)=>print('La clave $llave tiene el valor $valor'));

    print(mapa);*/

    /*
    Map <int,String> mapa = {
        1:'pedro',
        2:'pablo',
        3:'luis',
        4:'brayan',
    };
    print(mapa);
    mapa.values.forEach((valor)=>print('Valor del mapa: $valor'));
    mapa.keys.forEach((llave)=>print('la clave $llave'));

    mapa.forEach((llave,valor)=>print('La clave $llave tiene el valor $valor'));
    */
    /*
    Set conjunto;
    conjunto = Set.from(['angel','luis','brayan','maria']);
    conjunto.forEach((valor)=>print('El conjunto es $valor'));
    print(conjunto);*/

    print("Ingrese esu sabor preferido");
    String sabor = stdin.readLineSync().toString();

    switch (sabor){
        
        case "vainilla":
            print("Su helado sera de Vainilla");
            break;
        case "chocolate":
            print("Su helado sera de Chocolate");
            break;
        case "naranja":
            print("Su helado sera de Naranja");
            break;
        default:
            print("No tenemos su sabor favorito");
            break;
    }

}