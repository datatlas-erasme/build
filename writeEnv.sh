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
echo "DATATLAS_BACK_END_PORT=$SERVER_PORT" >> back/src/.env
echo "NOTION_API_KEY=$NOTION_API_KEY" >> back/src/.env
echo "BEARER_TOKEN=$BEARER_TOKEN" >> back/src/.env

# write a a .env file with the following content: 
# REACT_APP_BACKEND_URL='URl_To_BACK_API'
# User prompt asking for the backend url if no prompt use the default url http://localhost:3000
echo "Enter the backend url if no prompt use the default url http://localhost:3000"
read BACKEND_URL
# Check if BACKEND_URL is empty or not
if [ -z "$BACKEND_URL" ]; then
  echo "No backend url entered, using default url"
  BACKEND_URL="http://localhost:3000"
fi
# Else write the .env file with the read value
echo "REACT_APP_BACKEND_URL=$BACKEND_URL" >> front/src/.env

