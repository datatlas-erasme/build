#sh scripts/getGit.sh
sh scripts/writeEnv.sh

sh scripts/setConfFiles.sh


# Install dependencies
echo "Install dependencies for FRONT"
cd $DATATLAS_PATH/front
npm install --legacy-peer-deps
cd ..

echo "Install dependencies for BACK"
cd $DATATLAS_PATH/back
npm install
cd ..


echo "Everything is installed, you can now run the back and front servers"




