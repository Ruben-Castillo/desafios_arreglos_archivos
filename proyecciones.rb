data=open('ventas_base.db').read.split(',')
proyecciones=data.map{|valor| valor.to_i}
escenario1=[]
total1=0
for i in (0..11) do
    escenario1.push(proyecciones[i]*1.1) if i<=5
    escenario1.push(proyecciones[i]) if i>5
    total1+=escenario1[i]
end
escenario2=[]
total2=0
for i in (0..11) do
    escenario2.push(proyecciones[i]) if i<=5
    escenario2.push(proyecciones[i]*1.2) if i>5
    total2+=escenario2[i]
end
resultado="#{total1.round(2)}\n#{total2.round(2)}"

File.write("./resultados.data", resultado)


