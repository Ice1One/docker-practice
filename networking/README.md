# Networking & Infrastructure

nginx configuration demonstrating core networking concepts.

## Concepts Covered

| Concept | Implementation |
|---------|---------------|
| Reverse Proxy | nginx proxies /app1/ and /app2/ to separate containers |
| Caching | proxy_cache with HIT/MISS headers |
| Firewall | iptables rules + AWS Security Groups |
| Load Balancer | weighted upstream between app1 and app2 |

## Run

```bash
docker-compose up -d
```

## Test

```bash
# Load balancer
for i in {1..6}; do curl -s http://localhost:8080/; done

# Cache
curl -I http://localhost:8080/app1/

# Status
curl http://localhost:8080/status
```
