@echo off

echo get a new bearer-token for me (the admin-user)
echo.
echo.
kubectl -n kubernetes-dashboard create token admin-user
echo.
echo.