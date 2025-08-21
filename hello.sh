set -euo pipefail
{
  echo "Hello from $(hostname)"
  echo "Time: $(date -Is)"
} | tee hello.log
