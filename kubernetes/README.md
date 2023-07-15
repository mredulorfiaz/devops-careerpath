# Kubernets


## Get Started
**Install Minikube**
https://minikube.sigs.k8s.io/docs/start/

**View dashboard**
```
minikube dashboard
``` 


## Basic Commands
**Check pods/services/deployments**
```
kubectl get pods
kubectl get services
kubectl get deployments
```

**Create a deployment with 3 pods using kubectl**
```
kubectl create deployment nginx-deployment --image=nginx:latest --replicas=3
```

**Update existing deployment** 
```
kubectl set image deployment/nginx-deployment nginx=nginx:1.19.2
```

**Get detailed information about resources**
```
kubectl describe pod <pod-name>
kubectl describe deployment <deployment-name>
kubectl describe service <service-name>

```
**Execute commands in a running container**
```
kubectl exec -it <pod-name> -- <command>     # Execute a command in a pod interactively
kubectl exec <pod-name> -- <command>         # Execute a command in a pod
kubectl logs <pod-name>                      # View the logs of a pod
```

**Delete resources**

```
kubectl delete pod <pod-name>                # Delete a specific pod
kubectl delete deployment <deployment-name>  # Delete a specific deployment
kubectl delete service <service-name>        # Delete a specific service
```

**Scale resources**
```
kubectl scale deployment <deployment-name> --replicas=<new-replica-count>   # Scale the replicas of a deployment
kubectl scale --replicas=<new-replica-count> deployment/<deployment-name>   # Scale the replicas of a deployment
```

**Port forward a service inside pod/deployment/service to local machine**
```kubectl port-forward pod/<pod-name> <local-port>:<pod-port>   # Forward a local port to a port on a pod
kubectl port-forward service/<service-name> <local-port>:<service-port>   # Forward a local port to a port on a service
```

**Export resource configuration to a YAML file**
```
kubectl get <resource-type> <resource-name> -o yaml > <filename.yaml>   # Export the configuration of a specific resource to a YAML file
```
