def nota_mas_alta(nombre)
    #leer archivo
    original_data=open('notas.data').readlines
    data= original_data.map{|ele|ele.chomp.split(',')}
    #extraer solo nombres del archivo 
    nombres=data.map{|ele| ele[0]}
    #determinar índice del array que contiene el nombre y las notas del nombre dado
    indice=nombres.index(nombre)
    #contar la cantidad de notas asociadas al nombre dado, así funciona aunque tengan distinta cantidad de notas
    n=data[indice].count
    #extraer solo las notas del nombre dado como integers
    notas=[]
    for j in (1..n) do
        notas.push(data[indice][j].to_i)
    end
    #determinar la nota máxima y retornar mensaje
    notas.max
    "La nota más alta de #{nombre} es: #{notas.max}"
end
#el parámetro debe ser pasado en la misma forma en que está escrito en el archivo y los nombres deben ser únicos.
puts nota_mas_alta("Pedro")