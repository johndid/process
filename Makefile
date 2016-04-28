SHELL:=/bin/bash
SCRIPTS:=scripts
README:=README.md
REPORT:=report.txt

.PHONY: all report clean
all: $(REPORT)

clean:
	@rm $(REPORT)

$(REPORT) : $(README)
	@grep 'TODO:' $< | cut -d ':' -f2 | grep -n ' ' | sed 's/^ //' > $@
	@$(SCRIPTS)/calc.sh $@ >> $@
	@cat $@
