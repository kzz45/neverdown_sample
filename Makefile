REGISTRY_DOMAIN := ali-bj2-igame-storehouse-1-registry.cn-beijing.cr.aliyuncs.com
PROJECT := games
TAG ?= latest

build-gamex:
	docker build -f Dockerfile -t "$(REGISTRY_DOMAIN)/$(PROJECT)/$(service):$(TAG)" .
	docker push "$(REGISTRY_DOMAIN)/$(PROJECT)/$(service):$(TAG)"
	bash jingxcli.sh cli $(PROJECT) $(service) $(TAG)
