echo 'Get repositories into '$DATATLAS_PATH
# Get repositories into $DATATLAS_PATH
git clone https://github.com/datatlas-erasme/front $DATATLAS_PATH/front
git clone https://github.com/datatlas-erasme/back $DATATLAS_PATH/back
git clone https://github.com/datatlas-erasme/tools $DATATLAS_PATH/tools
cd $DATATLAS_PATH/front

echo $(git branch -r)

read -p "Enter the branch name for FRONT : " branch
git checkout $branch

cd ..

cd $DATATLAS_PATH/back

echo $(git branch -r)

read -p "Enter the branch name for BACK : " branch
git checkout $branch

cd ..