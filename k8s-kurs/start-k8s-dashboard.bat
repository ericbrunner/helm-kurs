@echo off

echo K8s Pod Portwarding from 8443 -> 443 in Pod  kubernetes-dashboard-kong
start "Port Forwarding" cmd /c "kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443" 

echo get a new bearer-token for me (the admin-user)
echo.
echo.
kubectl -n kubernetes-dashboard create token admin-user
echo.
echo.


echo open kubernetes-dashboard in chrome
echo.
start chrome https://localhost:8443

