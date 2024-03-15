void main() {

        List <int> numeros = [1,2,3,4,5,6,7,8,9,10];
        numeros.forEach((x) {
            int y = cuadrado(x);
            print("El cuadrado de $x es $y");
            });
            

}

int cuadrado(int x) {
    int temp = x*x;
    return temp;
}

