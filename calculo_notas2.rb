def notas_mas_alta
    original_data=open('notas.data').readlines
    data= original_data.map{|ele|ele.chomp.split(',')}
    nombres=data.map{|ele| ele[0]}
    cant_nombres=nombres.count
    notas_max=[]
    cant_nombres.times do |i|
        n=data[i].count
        notas=[]
        for j in (1..n) do
            notas.push(data[i][j].to_i)
        end
        nota_max=notas.max
        notas_max.push(nota_max)
    end
    notas_max
end

print notas_mas_alta