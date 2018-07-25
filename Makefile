CXX=g++
STD=-std=c++14
CXXFLAGS=-Wall -Wextra -Werror -Wpedantic -o
SOURCES= *.cpp

atm: $(SOURCES)
	$(CXX) $(SOURCES) $(STD) $(CXXFLAGS) $@ -g

modernRelaese: $(SOURCES)
	$(CXX) $(SOURCES) $(STD) $(CXXFLAGS) $@ -O3

clean:
	rm *.o
