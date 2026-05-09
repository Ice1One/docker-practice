#!/bin/bash

echo "=============================="
echo "   SERVER MONITOR - $(date)"
echo "=============================="

echo ""
echo "📊 SYSTEM:"
echo "  Uptime:  $(uptime -p)"
echo "  RAM:     $(free -h | awk '/^Mem:/ {print $3 " used / " $2 " total"}')"
echo "  Disk:    $(df -h / | awk 'NR==2 {print $3 " used / " $2 " total"}')"

echo ""
echo "🐳 DOCKER CONTAINERS:"
docker ps --format "  {{.Names}}: {{.Status}}"

echo ""
echo "📈 RESOURCES:"
docker stats --no-stream --format "  {{.Name}}: CPU {{.CPUPerc}} | RAM {{.MemUsage}}"

echo ""
echo "🌐 SITE STATUS:"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" https://mzvarych.mooo.com)
if [ "$STATUS" = "200" ]; then
  echo "  https://mzvarych.mooo.com → ✅ $STATUS OK"
else
  echo "  https://mzvarych.mooo.com → ❌ $STATUS"
fi

echo ""
echo "=============================="
