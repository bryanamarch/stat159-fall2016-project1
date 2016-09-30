.PHONY: all clean

md = paper/sections/*.md
ppr_md = paper/paper.md
ppr_html = paper/paper.html

all: $(ppr_md) $(ppr_html)

$(ppr_md): $(md)
	cat $(md) > $(ppr_md)

$(ppr_html): $(ppr_md)
	pandoc -s $(ppr_md) -o $(ppr_html)

clean: 
	rm -f $(ppr_html)
