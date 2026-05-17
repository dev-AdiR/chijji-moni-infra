# Cluster Management
create-cluster:
	cd terraform && terraform apply -auto-approve
	aws eks update-kubeconfig --name chijji-moni-cluster --region ap-south-1

delete-cluster:
	cd terraform && terraform destroy -auto-approve

# Kubernetes
deploy:
	kubectl apply -f ./secret.yaml
	kubectl apply -f ./deployment.yaml
	kubectl apply -f ./service.yaml

destroy:
	kubectl delete -f service.yaml --ignore-not-found=true || true
	kubectl delete -f deployment.yaml --ignore-not-found=true || true
	kubectl delete -f secret.yaml --ignore-not-found=true || true

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