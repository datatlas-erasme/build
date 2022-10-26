#sh scripts/getGit.sh
#sh scripts/writeEnv.sh

sh scripts/setConfFiles.sh

# EXIT
exit 0

# Install dependencies
echo "Install dependencies for FRONT"
cd $DATATLAS_PATH/front
npm install
cd ..

echo "Install dependencies for BACK"
cd $DATATLAS_PATH/back
npm install
cd ..



