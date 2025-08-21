set -euo pipefail
{
  echo "Hello from $(hostname)"
  echo "Time: $(date -Is)"
} | tee hello.log
# trigger
# change at Thu Aug 21 23:21:18 UTC 2025
# retrigger Thu Aug 21 23:58:07 UTC 2025
