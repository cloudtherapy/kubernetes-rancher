rg=$(terraform output -raw resource_group_name)
k8s=$(terraform output -raw kubernetes_cluster_name)

az aks get-credentials --resource-group ${rg} --name ${k8s} --overwrite-existing