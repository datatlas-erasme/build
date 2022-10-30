# Ask 
# 1- Init dev environment with npm
# 2- Init dev environment with docker

echo "Please choose an option:"
echo "1- Init dev environment with npm"
echo "2- WIP - NOT WORKING Init dev environment with docker"
read -p "Enter your choice: " choice
case $choice in
    1) echo "Init dev environment with npm"
       echo "On wich path do you want to init the project ?"
       read -p "Enter the path: " path
       export DATATLAS_PATH=$path
       sh scripts/initDevNpm.sh
       ;;
    2) echo "WIP - NOT WORKING Init dev environment with docker"
       echo "On wich path do you want to init the project ?"
       read -p "Enter the path: " path
       export DATATLAS_PATH=$path
       sh scripts/initDevDocker.sh
       ;;
    *) echo "Invalid option"
       ;;
esac
