# Cluster Management
create-cluster:
	eksctl create cluster --name chijji-moni-cluster --region ap-south-1 --nodegroup-name chijji-moni-nodes --node-type t3.small --nodes 2 --nodes-min 1 --nodes-max 3 --managed

delete-cluster:
	eksctl delete cluster --name chijji-moni-cluster --region ap-south-1

# Kubernetes
deploy:
	kubectl apply -f ./app/secret.yaml
	kubectl apply -f ./app/deployment.yaml
	kubectl apply -f ./app/service.yaml

destroy:
	kubectl delete -f ./app/service.yaml
	kubectl delete -f ./app/deployment.yaml
	kubectl delete -f ./app/secret.yaml

# Pods
pods:
	kubectl get pods

logs:
	kubectl logs -l app=chijji-moni-app --all-containers=true

restart:
	kubectl rollout restart deployment chijji-moni-app

status:
	kubectl get pods
	kubectl get services

# Full setup from scratch
setup: create-cluster deploy
	echo "Cluster and app are up!"

# Tear everything down
teardown: destroy delete-cluster
	echo "Everything deleted!"