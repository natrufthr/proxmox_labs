mkdir hw
kubectl create ns hw
kubectl -n hw create deployment hw --image=natrufthr/helloworld:fail --replicas=1 -o yaml > hw/deployment.yaml
kubectl -n hw expose deployment hw --port 5000 --type NodePort -o yaml > hw/np-svc.yaml