SRC = Src
BIN = Bin
LIBS = Libs/*
JDK = jdk/bin/

CORE = $(SRC)/Rendering \
       $(SRC)/Physics \
       $(SRC)/UserIO \
       $(SRC)/Utils \
       $(SRC)/Game \
       $(SRC)/Game/Core \
       $(SRC)/Game/UI \
       $(SRC)/Game/Visuals/Nodes \
       $(SRC)/Game/Visuals/Resources \
       $(SRC)/Game/Physics/Nodes \
       $(SRC)/Game/Cameras/Nodes

NS = $(SRC)/CodeNameNeutronStar



J = java

JC = javac


NS_MODULES = #Game Module Files



CORE_FILES = $(foreach d,$(CORE),$(d)/*.java)
GAME_FILES = $(foreach d,$(NS_MODULES),$(d)/*.java)

compile:
	rm -rf $(BIN)
	mkdir $(BIN)
	$(JC) -d $(BIN) -cp "$(LIBS)" $(CORE_FILES) $(GAME_FILES)

run:
	$(J) -cp "$(LIBS);$(BIN)" Game.Core.GameEntry

all: compile run
