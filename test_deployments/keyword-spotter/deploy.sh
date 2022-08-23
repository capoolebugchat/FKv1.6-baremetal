sudo kubectl apply -f keyword-spotter-pv.yaml

sleep 30
sudo kubectl apply -f keyword-spotter-pvc.yaml

sleep 30
sudo kubectl apply -f keyword-spotter-transformer.yaml
