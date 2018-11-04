from random import randint

print "Enter routes (ex 'ab3, cb5, ac2, ca2')"
cities = raw_input()
cities = cities.split(", ")

fName = "tests/test" +str(randint(100, 999))+".pl"
f = open(fName,"w") 
for i in cities:
        f.write("train({},{},{}).\n".format(i[0],i[1],i[2]))
f.close()
print "{} created!".format(fName)
print "Note: make sure to change the first line in main.pl!"
