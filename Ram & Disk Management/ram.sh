echo "today's date is: $(date)"

echo "file storage details: $(df -h)"

echo "file size details: $(free -h)"

echo "fetching size from storage: $(df -h | awk ' NR==2 {print $2}')"

echo "fetching size from file details: $(free -h | awk ' NR==2 {print $2}')"
