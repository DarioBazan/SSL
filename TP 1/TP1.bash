# PUNTO 2 

# a. Reemplazar puntos por punto y salto de linea.
# b. Borra lineas en blanco.
# c. Guarda archivo en nuevo archivo
sed 's/\./.\n/g' breve_historia.txt | grep -v '^[[:space:]]*$' > "2a)breve_historia_2.txt"
# d. Listar oraciones con la palabra "independencia"
grep -i 'independencia' breve_historia.txt > "2d)independencia.txt"
# e. Mostrar lineas que empiezan con "El" y terminan con "."
grep '^El.*\.$' breve_historia.txt > "2e)empiezanTerminan.txt"
# f. Cuantas veces aparece la palabra "peronismo"
grep -o -i 'peronismo' breve_historia.txt | wc -l > "2f)peron.txt"
# g. Contar la cantidad de oraciones con "Sarmiento" y "Rosas"
grep -i 'Sarmiento' breve_historia.txt | grep -i 'Rosas' | wc -l > "2g)sarmientoRosas.txt"
# h. Mostrar oraciones con fechas del siglo XIX
grep -E '\b(18[0-9]{2}|1899)\b' breve_historia.txt > "2h)sigloXIX.txt"
# i. Reemplazar la primera palabra de todas las primeras lineas por "nada" utilizando sed
sed 's/^[a-zA-Z]*\b/Nada/g' breve_historia.txt > "2i)laNada.txt"
# j. Mostrar archivos .txt
ls | grep '\.txt$' > "2j)listaArchivos.txt"

# PUNTO 3

# a. Las Variables son elementos para almacenar y manipular datos, estos pueden ser de diferentes tipos.
echo "a. Variables, asignacion y concatenacion" >> "3)elementosBash.txt"
echo "nombre=Pepe" >> "3)elementosBash.txt"
echo "apellido=Argento" >> "3)elementosBash.txt"
nombre="Pepe"
apellido="Argento"
nombre_completo="$nombre $apellido" # El nombre completo concatena las variables almacenadas en una nueva.
echo "Resultado = Nombre completo: $nombre_completo" >> "3)elementosBash.txt"
echo -e "\n" >> "3)elementosBash.txt"

# b. Las sentencias condicionales permiten ejecutar diferentes codigos segun las condiciones. Sirven para tomar decisiones y automatizar tareas.
echo "b. Sentencias Condicionales, asignacion y toma de decision" >> "3)elementosBash.txt"
echo "edad=18" >> "3)elementosBash.txt"
echo "edad mayor o igual a 18?" >> "3)elementosBash.txt"
edad=18
if [ $edad -ge 18 ]; then
    echo "Resultado = Mayor de edad." >> "3)elementosBash.txt"
else
    echo "Resultado = Menor de edad." >> "3)elementosBash.txt"
fi 
echo -e "\n" >> "3)elementosBash.txt"

# c. Las sentencias ciclicas permiten ejecutar codigo repetidamente hasta que se cumpla una condicion. Sirven para la automatizacion de tareas que deben repetirse varias veces.
echo "c. Sentencias Ciclicas, repeticion de codigo" >> "3)elementosBash.txt"
echo "Repite el saludo 8 veces" >> "3)elementosBash.txt"
for i in {1..8}; do
    echo "  Hola Mundo!!" >> "3)elementosBash.txt"
done
echo -e "\n" >> "3)elementosBash.txt"

# d. Los subprogramas son funciones que permiten definir codigo reutilizable que se pueden llamar y ejecutar en diferentes partes de un programa segun parametros. Sirve para separar programa en modulos y organizar el codigo, evitando la repeticion innecesaria.
echo "d. Subprograma, ejecucion segun parametros enviados" >> "3)elementosBash.txt"
echo "Suma los valores 5 + 3" >> "3)elementosBash.txt"
function suma() {
    resultado=$(( $1 + $2 ))
    return $resultado
}
suma 5 3
echo "El resultado es $?" >> "3)elementosBash.txt"