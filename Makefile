.PHONY: charts
all: charts

charts:
	cd chart && helm package expressjs-k8s/
	mv chart/*.tgz docs/
	helm repo index docs --url https://ravi-devarakonda.github.io/rd-js-app/ --merge ./docs/index.yaml
