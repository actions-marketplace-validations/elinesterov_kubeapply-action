VERSION_REF := v0.0.32

.PHONY: version
version:
	echo Version REF: $(VERSION_REF)

.PHONY: image
image:
	docker build --build-arg VERSION_REF=$(VERSION_REF) . -t kubeapply

