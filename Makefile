.PHONY: vendor glockfile

glockfile:
	glock save github.com/golangmx/vendoring-demo # https://github.com/robfig/glock

vendor:
	glock sync github.com/golangmx/vendoring-demo # https://github.com/robfig/glock
	rm -rf vendor
	gv < GLOCKFILE # https://github.com/pressly/gv
