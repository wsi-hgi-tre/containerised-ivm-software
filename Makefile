FINNGEN_REPO = finngen-v3/.git
SRC = Dockerfile inventory $(FINNGEN_REPO)

all: $(SRC)
	docker build -t ivm-software:$$(cd finngen-v3; git log -1 --format=%cd --date=format:%Y%m%d) .

$(FINNGEN_REPO):
	git submodule update --init --remote

.PHONY: all
