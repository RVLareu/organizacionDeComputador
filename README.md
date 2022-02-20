# Trabajo practico (+ resumen de la materia para la practica)


En este informe tenemos como objetivo desarrollar un programa el cual implementará el algoritmo de Euclides sobre una cantidad arbitraria de pares de números, con el fin de familiarizarnos con el conjunto de instrucciones MIPS y el concepto de ABI.

</br>
El algoritmo de euclides es un método que se utiliza para calcular el máximo común divisor (GCD) entre
dos o más números enteros, el GCD se define como el mayor número entero que divide a los argumentos
sin dejar un resto. Al dividir un número entero a entre un número entero b se obtiene un cociente q y un
resto r. A partir de ello se puede demostrar que el máximo común divisor entre a y b es equivalente al máximo común divisor entre b y r, y éste es el principio fundamental del algoritmo, el cual se encarga de realizar iteraciones hasta que el segundo argumento sea nulo , de forma tal que el GCD estara compuesto por el primer argumento. De esta manera se prosigue hasta lograr satisfacer la siguiente ecuación:

</br>
</br>
</br>


![image](https://user-images.githubusercontent.com/71232328/154850088-d75d07be-4d02-42c3-9770-55533fe83f57.png)



</br>

donde *k* representa el paso, *r* el resto y *q* el cociente.
