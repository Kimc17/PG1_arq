R= {'add' : ["000"], 'mul' : ["001"],'lsr' : ["010"], 'and' :["011"],
       'sub' : ["100"]}
I= {'ldr' : ["00001"], 'str' :["00010"], 'beq' :["00011"], 'adi' :["00100"], 'bgt' :["00101"] }


codigo=""
f = open("codigo.txt", "r")
f2 = open("compilado_codigo.dat", "w")
lineas = f.readlines()
print(lineas)
Ra= 0
Rb=0
b = ",' '"
for i in lineas:
    cad = i.strip().lower()
    print(cad)
    for char in b:
        cad = cad.replace(char,"")            
    
    if cad.find(":") != -1:
        print("etiqueta")
    elif (cad[0:3]  == 'add' or cad[0:3]  == 'mul' or cad[0:3]  == 'lar' or  cad[0:3]  == 'and' or cad[0:3]  == 'sub' or cad[0:3]  == 'lsr'):
        for j in R:
            if cad[0:3] == j:
                codigo += "00000"
                Rd= str(bin(int(cad[4],16))[2:])
                while len(Rd)<4:
                    Rd ="0"+ Rd
                codigo += Rd

                Ra= str(bin(int(cad[6],16))[2:])
                while len(Ra)<4:
                    Ra ="0"+ Ra
                codigo += Ra

                Rb= str(bin(int(cad[8],16))[2:])
                while len(Rb)<4:
                    Rb ="0"+ Rb
                codigo += Rb
                codigo += R[j][0]
                while len(codigo)<32:
                    codigo =codigo + "0"
    elif (cad[0:3]  == 'ldr' or cad[0:3]  == 'str' or cad[0:3]  == 'beq' or  cad[0:3]  == 'adi' or cad[0:3]  == 'bgt'):
        for j in I:
            if cad[0:3] == j:
                codigo += I[j][0]
                            
                Rd= str(bin(int(cad[4],16))[2:])
                while len(Rd)<4:
                    Rd ="0"+ Rd
                codigo += Rd
                print(Rd)
                
                Ra= str(bin(int(cad[6],16))[2:])
                while len(Ra)<4:
                    Ra ="0"+ Ra
                codigo += Ra
                print(Ra)

                print(cad[8:])

                if int(cad[8:]) >=0:
                    Imm= str(bin(int(cad[8:]))[2:])
                    while len(Imm)<19:
                        Imm ="0"+ Imm
                else:
                    t = bin(int(cad[8:]))[3:]
                    t=int(cad[8:])
                    t= bin(t & 0b1111111111111111111)
                    Imm= str(t[2:])
                    
                    while len(Imm)<19:
                        Imm ="1"+ Imm

                codigo += Imm
                print(codigo)
    if codigo != "":
        
            
        f2.write( hex(int(codigo[0:4],2))[2:]+ hex(int(codigo[4:8],2))[2:]+
        hex(int(codigo[8:12],2))[2:]+hex(int(codigo[12:16],2))[2:]+hex(int(codigo[16:20],2))[2:]+
        hex(int(codigo[20:24],2))[2:]+hex(int(codigo[24:28],2))[2:]+hex(int(codigo[28:32],2))[2:]+'\n')
        f2.write('00000000' +'\n')
        f2.write('00000000' +'\n')
        f2.write('00000000' +'\n')

    codigo = ""
        
f.close()
f2.close()
