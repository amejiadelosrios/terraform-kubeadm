kubectl --kubeconfig <conf-file>.conf get pods --all-namespaces

kubectl --kubeconfig <conf-file>.conf get pods 

# Connecting to a node
In the following, you will SSH into one of the nodes of your cluster.

To do so, you need to know the public IP address of this node.

ssh -i ~/.ssh/id_rsa ubuntu@<master-public-ip>

# install CNI plugins

Install Calico on the first cluster:

$ kubectl apply \
  -f https://docs.projectcalico.org/manifests/calico.yaml \
  --kubeconfig <conf-file>.conf