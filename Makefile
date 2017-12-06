day1-1: day1-1.c
	gcc day1-1.c advent.o -o day1-1
advent.o: advent.c

clean:
	rm -f *.exe *.o 
