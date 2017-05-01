IDIR =../include
CXX=g++
CXXFLAGS=-I$(IDIR) -g 

ODIR=../obj
LDIR=../lib

LIBS=

all: $(ODIR)/mips_arch.o $(ODIR)/mips.o $(ODIR)/main.o main

$(ODIR)/mips_arch.o: mips_arch.cpp $(IDIR)/mips_arch.hpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

$(ODIR)/mips.o: mips.cpp $(IDIR)/mips_arch.hpp $(IDIR)/mips.hpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

$(ODIR)/main.o: main.cpp $(IDIR)/mips_arch.hpp $(IDIR)/mips.hpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

main: $(ODIR)/main.o $(ODIR)/mips.o $(ODIR)/mips_arch.o
	$(CXX) -o $@ $^ $(CXXFLAGS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(IDIR)/*~
