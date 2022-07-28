# Based on instance.json file ask user for each var

# Clear instance.json file if exists
if [ -f instance.json ]; then
  rm instance.json
fi


# add the first { to the instance.json file
echo "{" >> instance.json

#siteTitle
echo "Enter the site title"
read siteTitle
# write siteTitle to instance.json
echo "siteTitle: $siteTitle" >> instance.json


#mapboxToken
echo "Enter the mapbox token"
read mapboxToken
# write mapboxToken to instance.json
echo "mapboxToken: $mapboxToken" >> instance.json

#defaultMapLocation : {latitude, longitude, zoom}
echo "Enter the default map location"
# latitude
echo "Enter the default map latitude"
read defaultMapLocationLatitude
# longitude
echo "Enter the default map longitude"
read defaultMapLocationLongitude

# zoom
echo "Enter the default map zoom"
read defaultMapLocationZoom
# write defaultMapLocation to instance.json
echo "defaultMapLocation: {latitude: $defaultMapLocationLatitude, longitude: $defaultMapLocationLongitude, zoom: $defaultMapLocationZoom}" >> instance.json

# defaultMapBoxStyleUrl
echo "Enter the default mapbox style url"
read defaultMapBoxStyleUrl
# write defaultMapBoxStyleUrl to instance.json
echo "defaultMapBoxStyleUrl: $defaultMapBoxStyleUrl" >> instance.json


# layers : [{name, url, type, id}] id is based on the index of the loop
# create a loop who askes for each layer name, url and type
echo "Enter the number of layers"
read numberOfLayers
# convert numberOfLayers to int
numberOfLayers=$(($numberOfLayers + 0))
# display the number of layers
echo "You have $numberOfLayers layers"
# create a while loop who askes for each layer name, url and type {name, url, type, id}
# id is based on the index of the loop
# Write "layers": [ to instance.json
echo "layers: [" >> instance.json
i=0
while [ $i -lt $numberOfLayers ]
do
  # ask for layer name
  echo "Enter the layer name"
  read layerName
  # ask for layer url
  echo "Enter the layer url"
  read layerUrl
  # ask for layer type
  echo "Enter the layer type"
  read layerType
  # write layer to instance.json
  echo "{name: $layerName, url: $layerUrl, type: $layerType, id: $i}," >> instance.json
  # increment i
  i=$(($i + 1))
done

# Close the layers array
echo "]" >> instance.json

# add the last } to the instance.json file
echo "}" >> instance.json
