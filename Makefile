all:	jar

jar:    classes
	jar cef se.tesuji.mapparat.Main mapparat.jar -C classes se

.PHONY: classes
classes:
	javac -sourcepath src -d classes src/se/tesuji/mapparat/Main.java

.PHONY: clean
clean:
	rm -rf classes/*
