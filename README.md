```
./getcerts.sh
cp letsencrypt-data/live/xarif.de/fullchain.pem custom-router.crt
cp letsencrypt-data/live/xarif.de/privkey.pem custom-router.key
cat custom-router.key >> custom-router.crt
oc export secret router-certs -o yaml -n default> router-certs.backup.$date.yaml
oc delete secret router-certs -n default
oc secrets new router-certs -n default tls.crt=custom-router.crt tls.key=custom-router.key --type='kubernetes.io/tls' --confirm
oc rollout latest router -n default
```
