# write a a .env file with the following content: 
#DATATLAS_BACK_END_PORT=SERVER_PORT
#NOTION_API_KEY=YOUR_NOTION_API_KEY
#BEARER_TOKEN=YOUR_BEARER_TOKEN
# User prompt asking for the server port
echo "Enter the server port"
read SERVER_PORT
# User prompt asking for the notion api key
echo "Enter the notion api key"
read NOTION_API_KEY
# User prompt asking for the bearer token
echo "Enter the bearer token"
read BEARER_TOKEN
# Write the .env file with the above content in the back/src folder
echo "DATATLAS_BACK_END_PORT=$SERVER_PORT" >> $DATATLAS_PATH/back/.env
echo "NOTION_API_KEY=$NOTION_API_KEY" >> $DATATLAS_PATH/back/.env
echo "BEARER_TOKEN=$BEARER_TOKEN" >> $DATATLAS_PATH/back/.env

# write a a .env file with the following content: 
# REACT_APP_BACKEND_URL='URl_To_BACK_API'
echo "REACT_APP_BACKEND_URL=http://localhost:$SERVER_PORT" >> $DATATLAS_PATH/front/.env

