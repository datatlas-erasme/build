echo "Getting back conf files"
cd $DATATLAS_PATH/tools/Instance_config
pip install -r requirements.txt
sudo rm -r configs
git clone https://forge.grandlyon.com/erasme/datatlas-config.git configs
mv configs/configs/* configs
rm -r configs/configs
# for each folder in config ask if user wants to choose this one
# if yes copy the folder to the back/data folder
echo "Choose the config folder you want to use"
for folder in configs/*; do
  echo $folder '\n'
done
read -p "Enter the folder name: (ex: opendata_alimentaire)" folder
cp -r configs/$folder/* $DATATLAS_PATH/back/data

# remove KeplerConfiguration.json and LayersConfiguration.json and rename the files in the folder to KeplerConfiguration.json and LayersConfiguration.json
rm $DATATLAS_PATH/back/data/KeplerConfiguration.json
rm $DATATLAS_PATH/back/data/LayersConfiguration.json
mv $DATATLAS_PATH/back/data/kepler.json $DATATLAS_PATH/back/data/KeplerConfiguration.json
mv $DATATLAS_PATH/back/data/instance.json $DATATLAS_PATH/back/data/LayersConfiguration.json
cd ..