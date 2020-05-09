# Have Kubernetes make a deployment.yaml for us
#kubectl create deployment java-11-test --image=scottmccrory/java-11-test --dry-run -o=yaml > deployment.yaml
#echo --- >> deployment.yaml
#kubectl create service clusterip java-11-test --tcp=8081:8081 --dry-run -o=yaml >> deployment.yaml