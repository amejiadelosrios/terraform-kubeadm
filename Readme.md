kubectl --kubeconfig smooth-terrapin.conf get pods --all-namespaces

kubectl --kubeconfig smooth-terrapin.conf get pods 

# Connecting to a node
In the following, you will SSH into one of the nodes of your cluster.

To do so, you need to know the public IP address of this node.

ssh -i ~/.ssh/id_rsa ubuntu@34.210.51.205