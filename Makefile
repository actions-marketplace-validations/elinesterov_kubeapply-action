#VERSION_REF := v0.0.32
kubeapply_version_ref := VERSION_REF
VERSION_REF := $(shell cat ${kubeapply_version_ref})

.PHONY: version
version:
	echo Version REF: $(VERSION_REF)

.PHONY: image
image:
	docker build --build-arg VERSION_REF=$(VERSION_REF) . -t kubeapply

