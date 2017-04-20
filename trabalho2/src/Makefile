IDIR =../include
CXX=g++
CXXFLAGS=-I$(IDIR) -g

ODIR=../obj
LDIR=../lib

LIBS=

_DEPS= 
DEPS= $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ= main.o
OBJ= $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.cpp $(DEPS)
        $(CXX) -c -o $@ $< $(CXXFLAGS) $(LIBS)

main: $(OBJ)
        $(CXX) -o $@ $^ $(CXXFLAGS) $(LIBS)

.PHONY: clean

clean:
        rm -f $(ODIR)/*.o *~ core $(IDIR)/*~
