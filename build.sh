make WHAT="test/e2e/e2e.test github.com/onsi/ginkgo/v2/ginkgo cmd/kubectl test/conformance/image/go-runner"
cd test/conformance/image/
ARCH=amd64 REGISTRY="271518727158.dkr.ecr.eu-west-1.amazonaws.com" make build VERSION=v0.0.10
docker push 271518727158.dkr.ecr.eu-west-1.amazonaws.com/k8s-conformance-test:v0.0.10
