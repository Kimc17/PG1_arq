entrada = [3, 5, 6, 2, 8]  
d =11  	  
n = 14

tam = len(entrada)			
salida = entrada[:]

i = 0
d_i= d
ind = 0

while (i < tam):		    
        c = entrada[i]
        m=1
        while (ind<d):
            while (c>=n):
                    c-=n 
            print(c)
            pos= d_i & 1
            d_i = d_i >> 1     


            if (pos ==1):
                m *= c              #guarda en registro
                
            ind +=2
            c*=c

        while (m>=n):
                m-=n
        salida[i] = m
        i += 1
        ind=0
        d_i=d
        
    
print("entrada =", entrada)
print("salida=", salida)
