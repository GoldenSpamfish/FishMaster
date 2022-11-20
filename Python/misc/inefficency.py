from xmlrpc.client import MAXINT

inp=""
f=open('isEven.py', 'w')
toggle=False
f.write("num=1\n")

f.write("if num == 1:\n")
f.write("   print(\"odd\")\n")
for i in range(2,1000000):
    f.write("if num == "+ str(i) + ":\n")
    if toggle:
        f.write("   print(\"odd\")\n")
        toggle=False
    else:
        f.write("   print(\"even\")\n")
        toggle=True