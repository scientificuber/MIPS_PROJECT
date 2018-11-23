import pyperclip
a=input("Enter Number of bits : ")
print("Enter -1 to exit")
while(a!=0):
    b=input("Enter the Decimal Number : ")
    if(b==-1):
        break
    if(a==16):
        variable = ('{0:016b}'.format(b))
    pyperclip.copy(variable)
