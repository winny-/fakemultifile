INCLUDES=Greeter.cool \
	Constants.cool \
	Macros.cool

SRC=Main.cool
PP=$(patsubst %.cool, %.pp.cool, ${SRC})
ASM=$(patsubst %.cool, %.s, ${SRC})

${ASM}:

${PP}: ${SRC} ${INCLUDES}

.SECONDARY:
%.pp.cool: %.cool
	cpp -P -o $@ $<

%.s: %.pp.cool
	coolc -o $@ $<

.PHONY: run
run: ${ASM}
	coolspim $<

.PHONY: clean
clean:
	rm -f ${ASM} ${PP}
