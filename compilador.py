arit= {'add' : ["0000"], 'mulv' : ["0001"],'and' : ["0010"], 'sub' :["0001"],
       'cmp' : ["0100"], 'lsr' :["0011"], 'mov' :["1000"], 'addv' :["0110"], 'mulv' :["0111"]}
mem = {'ldr' : ["101"], 'str' :["101"]}

banderas = dict(eq="0000",ne="0001", cs="0010", cc="0011",
                mi="0100" , pl= "0101", ov ="0110", oc = "0111",
                hi = "1000", ms= "1001", ge="1010", mt= "1011",
                gt= "0011", me="0011", al="1110")

f2 = open("compilado.data", "w")
f2. write(str(hex(537067532))+'\n')
f2. write(str(hex(543686647))+'\n')
f2. write(str(hex(6563876)) +'\n')
f2. write(str(hex(10758176))+'\n')
f2. write(str(hex(279379978))+'\n')


f2.close()
