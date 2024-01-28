import os
import glob

maxcount=-1

for filename in glob.glob('*.asm'):
    db=False
    deleteFile = True
    f=open(filename,encoding='utf8')
    for line in f:
        line=line.strip()
        if 'MapTriggers' in line:
            db = True
            line = f.readline().strip()
            count = int(line[-1])
            maxcount = max(count,maxcount)
            print(filename, count)
            line = f.readline().strip()
            line = f.readline().strip()
            triggers=[]
            for i in range(count):
                line = f.readline().strip()
                triggers.append(line.split()[1].strip('.,'))
            for line in f:
                line = line.strip()
                for t in triggers:
                    if (t+':' == line) or ('.'+t+':' == line):
                        line = f.readline().strip()
                        if line != 'end':
                            print(t)
                            deleteFile = False
            break
    f.close()
print(maxcount)
