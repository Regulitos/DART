import 'dart:io';

void main(){
    /*Escribir  un programa que  pregunte  una fecha  en  formato  dd/mm/aaaa  y  muestre por 
    pantalla la misma fecha en formato dd de <mes> de aaaa donde <mes> es el nombre 
    del mes.*/

    Map<int, String> nombresMeses = {
        1: 'enero',
        2: 'febrero',
        3: 'marzo',
        4: 'abril',
        5: 'mayo',
        6: 'junio',
        7: 'julio',
        8: 'agosto',
        9: 'septiembre',
        10: 'octubre',
        11: 'noviembre',
        12: 'diciembre'
    };

    
    print('Ingrese la fecha en formato dd/mm/aaaa:');
    String fechaInput = stdin.readLineSync()!;

        // Separa el día, mes y año de la entrada del usuario
        List<String> partesFecha = fechaInput.split('/');
        int dia = int.parse(partesFecha[0]);
        int mes = int.parse(partesFecha[1]);
        int anho = int.parse(partesFecha[2]);

    nombresMeses.forEach((x,m){
        if(x==mes){
            print('$dia de $m de $anho');
        }
    });
        
        
}