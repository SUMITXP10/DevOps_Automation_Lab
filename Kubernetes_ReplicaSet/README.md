# Kubernetes ReplicaSet Automation

## Objective

Create a ReplicaSet with three replicas and verify automatic Pod recreation.

---

## Task Performed

- Created ReplicaSet
- Configured 3 Replicas
- Verified Running Pods
- Deleted One Pod
- Verified Automatic Recreation

---

## Technologies Used

- Kubernetes
- kubectl
- Docker
- Minikube
- VS Code

---

## Files

```
replicaset.yaml
Commands.txt
README.md
Outputs/
```

---

## Architecture

```
ReplicaSet
      │
      ├──── Pod 1
      ├──── Pod 2
      └──── Pod 3
```

Delete Pod

```
ReplicaSet
      │
      ├──── Pod 1
      ├──── Pod 2
      ├──── Pod Deleted ❌
      │
      └──── New Pod Created ✅
```

---

## Verification

```bash
kubectl get rs

kubectl get pods

kubectl delete pod <pod-name>

kubectl get pods
```

---

## Skills Learned

- ReplicaSet
- Desired State
- Self Healing
- Kubernetes CLI

---

Author

**Sumit Ranjan Satapathy**
