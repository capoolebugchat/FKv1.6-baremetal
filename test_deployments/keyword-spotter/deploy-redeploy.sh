if sudo kubectl delete isvc keyword-spotter-service -n kubeflow-user-example-com; then
echo "Service found, Deleting Sequence";
echo "Waiting 1m";
sudo sleep 1m;
echo "Waiting 2m";
sudo sleep 1m;
sudo docker images | grep capoolebugchat/test-kws-trans | awk {'print $3'} |sudo xargs docker rmi;
sudo kubectl apply -f keyword-spotter-transformer.yaml;
sudo kubectl get pods --all-namespaces -w | grep keyword-spotter
else echo "Service not found !";
sudo kubectl apply -f keyword-spotter-transformer.yaml;
sudo kubectl get pods --all-namespaces -w | grep keyword-spotter
fi;
done
