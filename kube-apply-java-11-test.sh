# Apply the Kubernetes deployment.yaml
kubectl apply -f deployment.yaml

# See if deployment worked (Keep doing kubectl get all until the demo pod shows its status as "Running")
kubectl get all

# Now you need to be able to connect to the application, which you have exposed as a Service in Kubernetes.
# One way to do that, which works great at development time, is to create an SSH tunnel:
kubectl port-forward svc/demo 8081:8081

# Then you can verify that the app is running in another terminal ({"status":"UP"})
curl localhost:8081/actuator/health
