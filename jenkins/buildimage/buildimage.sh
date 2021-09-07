echo "**************************************"
echo "******Building Docker Image******************"
echo "**************************************"
cd jenkins/buildimage && docker-compose build --no-cache

