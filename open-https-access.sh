cd sec-and-accesses/

sudo kubectl apply -f https-gateway-cert.yaml
sudo kubectl apply -f config-gateway.yaml

sudo nohup kubectl port-forward svc/istio-ingressgateway -n istio-system 8020:443 --address=0.0.0.0 &
