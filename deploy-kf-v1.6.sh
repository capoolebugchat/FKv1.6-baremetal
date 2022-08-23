$PATH_TO_KUSTOMIZE = "~/bin/kustomize_3.2.0_linux_amd64"

cd manifests

sudo minikube start --kubernetes-version=1.21.0 --driver=none \
--extra-config=apiserver.service-account-signing-key-file=/var/lib/minikube/certs/sa.key \
--extra-config=apiserver.service-account-issuer=kubernetes.default.svc

while ! sudo "$PATH_TO_KUSTOMIZE" build example | sudo kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done

sh open_https_access.sh

sudo kubectl get pods --all-namespaces -w

