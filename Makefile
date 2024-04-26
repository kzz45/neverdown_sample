REGISTRY_DOMAIN := ali-bj2-igame-storehouse-1-registry.cn-beijing.cr.aliyuncs.com
REGISTRY_DOMAIN_PRI := ali-bj2-igame-storehouse-1-registry-vpc.cn-beijing.cr.aliyuncs.com
PROJECT := games
TAG ?= latest

build-gamex:
	docker build -f Dockerfile -t "$(REGISTRY_DOMAIN)/$(PROJECT)/sample-$(service):$(TAG)" .
	docker push "$(REGISTRY_DOMAIN)/$(PROJECT)/sample-$(service):$(TAG)"
	bash jingxcli.sh cli $(PROJECT) sample-$(service) $(TAG)
