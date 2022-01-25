# aks-windows-npd

Daemonset used to configure node-problem-detector on Windows machines running in AKS

## Deploy

```bash
kubectl apply -f https://raw.githubusercontent.com/marosset/aks-windows-npd/win-npd-rbac.yaml
kubectl apply -f https://raw.githubusercontent.com/marosset/aks-windows-npd/win-npd.yaml

```

## Build

```powershell
.\build.ps1 [-image {image}] [-version {version}] [-push]
```
