import 'dart:io';

void main(){

    /*la pizzería Villa Italia ofrece pizzas vegetarianas y no vegetarianas a sus clientes. Los 
    ingredientes adicionales para cada tipo de pizza aparecen a continuación: 
    Ingredientes vegetarianos: Pimiento (1000), tofu (2000), y champiñones (3000). 
    Ingredientes no vegetarianos: Pepperoni (2000), Jamón (3000) y Salmón(5000). 
    Escribir un algoritmo que pregunte al usuario si quiere una pizza vegetariana o no, y en 
    función de su respuesta le muestre un menú con los ingredientes adicionales disponibles 
    para que elija. Solo se puede elegir un ingrediente adicional. Al final se debe mostrar por 
    pantalla si la pizza elegida es vegetariana o no, con el ingrediente adicional si así lo eligió y 
    el valor a pagar.*/

    // Definir los ingredientes y sus precios
    Map<String, int> ingredientesVegetarianos = {
        'Pimiento': 1000,
        'Tofu': 2000,
        'Champiñones': 3000,
    };

    Map<String, int> ingredientesNoVegetarianos = {
        'Pepperoni': 2000,
        'Jamón': 3000,
        'Salmón': 5000,
    };
    int pizzaVegetariana=50000;
    int pizzaNoVegetariana=40000;

    // Preguntar al usuario si quiere una pizza vegetariana o no
    print('¿Desea una pizza vegetariana? (s/n)');
    String respuesta = stdin.readLineSync()!.toLowerCase();

    print('Desea ingredientes adicionales? (s/n)');
    String respuestaAdicionales = stdin.readLineSync()!.toLowerCase();
    if (respuestaAdicionales=='s') {
        // Mostrar los ingredientes disponibles según la elección del usuario
        if (respuesta == 's') {
            print('Ingredientes vegetarianos adicionales disponibles:');
            ingredientesVegetarianos.forEach((ingrediente, precio) {
            print('$ingrediente: \$${precio}');
            });
        } else if (respuesta == 'n') {
            print('Ingredientes no vegetarianos adicionales disponibles:');
            ingredientesNoVegetarianos.forEach((ingrediente, precio) {
                print('$ingrediente: \$${precio}');
            });
        } else {
            print('Respuesta no válida. Por favor, responda s o n.');
            return;
        }

        // Pedir al usuario que elija un ingrediente adicional
        print('Elija un ingrediente adicional:');
        String ingredienteElegido = stdin.readLineSync()!;

        // Calcular el precio total
        int precioTotal;
        if (respuesta == 's' && ingredientesVegetarianos.containsKey(ingredienteElegido)) {
            precioTotal = pizzaVegetariana+ingredientesVegetarianos[ingredienteElegido]!;
            print('Pizza vegetariana con $ingredienteElegido. Precio: \$${precioTotal}');
        } else if (respuesta == 'n' && ingredientesNoVegetarianos.containsKey(ingredienteElegido)) {
            precioTotal = pizzaNoVegetariana+ingredientesNoVegetarianos[ingredienteElegido]!;
            print('Pizza no vegetariana con $ingredienteElegido. Precio: \$${precioTotal}');
        } else {
            print('Ingrediente no valido.');
            return;
        }
    }
}

