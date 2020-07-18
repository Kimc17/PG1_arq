entrada = [32, 53, 61, 23, 82]  
d = 11#2077 	  
n = 14#6497

tam = len(entrada)			
salida = entrada[:]

i = 0

ind = 0

while (tam>i):		    
        c = entrada[i]
        m=1
        d_i= d
        while (d>=ind):
            while (c>=n):
                    c=c-n 
            print(c)
            pos= d_i & 1
            d_i = d_i >> 1     

            if (pos ==1):
                m =m* c              #guarda en registro  
            ind +=2
            c= c*c
        while (m>=n):
                m-=n
        salida[i] = m
        i = i+ 1
        ind=0

        
    
print("entrada =", entrada)
print("salida=", salida)


