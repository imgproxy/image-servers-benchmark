
SHELL := /usr/bin/env bash

COMPOSE_ARGS=

DURATION='5m'
FORMAT=
TOOL=
WIDTH=512
HEIGHT=512

check_defined = \
    $(strip $(foreach 1,$1, \
        $(call __check_defined,$1,$(strip $(value 2)))))
__check_defined = \
    $(if $(value $1),, \
      $(error Undefined $1$(if $2, ($2))))


prepare-dataset:
ifeq (,$(wildcard ./dataset.zip))
	curl -Ls http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_HR.zip -o dataset.zip
endif
	rm -rf dataset/list.txt dataset/*.{jpg,png,webp,avif}

	unzip -qjd dataset dataset

	cd ./dataset; \
	processed=0; \
	for f in *.png; do \
		[ -e "$$f" ] || continue; \
		\
		vips copy $$f $${f//.png/.jpg}; \
		vips copy $$f $${f//.png/.webp}; \
		vips copy $$f $${f//.png/.avif}[Q=65,effort=0]; \
		\
		echo $$f >> list.txt; \
		echo $${f//.png/.jpg} >> list.txt; \
		echo $${f//.png/.webp} >> list.txt; \
		echo $${f//.png/.avif} >> list.txt; \
		processed=$$((processed + 1)); \
		echo -en "\rProcessed $${processed} images..."; \
	done

	chmod 644 ./dataset/*.{jpg,png,webp,avif}


down:
	docker compose down


up:
	$(call check_defined, TOOL, a tool to run)
	sed -E "s/ENGINE_THREADPOOL_SIZE = ([0-9]+)/ENGINE_THREADPOOL_SIZE = $$(nproc)/" thumbor/thumbor.conf.in > thumbor/thumbor.conf
	docker compose up nginx ${TOOL} ${COMPOSE_ARGS}

up-imgproxy: TOOL=imgproxy
up-imgproxy: up

up-thumbor: TOOL=thumbor
up-thumbor: up

up-imagor: TOOL=imagor
up-imagor: up


k6:
	$(call check_defined, TOOL, a tool to test)
	$(call check_defined, FORMAT, the image format to test)
	$(call check_defined, WIDTH, the resulting image width)
	$(call check_defined, HEIGHT, the resulting image height)

	docker compose run --rm k6 run -u $$(nproc) -d ${DURATION} \
		-e FORMAT="${FORMAT}" \
		-e TOOL="${TOOL}" \
		-e WIDTH=${WIDTH} \
		-e HEIGHT=${HEIGHT} \
		k6.js

k6-imgproxy: TOOL=imgproxy
k6-imgproxy: k6

k6-thumbor: TOOL=thumbor
k6-thumbor: k6

k6-imagor: TOOL=imagor
k6-imagor: k6


bench-imgproxy: COMPOSE_ARGS=-d --wait
bench-imgproxy: up-imgproxy k6-imgproxy down

bench-thumbor: COMPOSE_ARGS=-d --wait
bench-thumbor: up-thumbor k6-thumbor down

bench-imagor: COMPOSE_ARGS=-d --wait
bench-imagor: up-imagor k6-imagor down
