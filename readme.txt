Steps to Deploy the React Application:

1. Use the terraform script to create an EC2 Instance with the Necessary security Groups.
Terraform Filename: terraform

Command:
terraform init 
terraform apply

2. Once the Instance is created, Clone the below git repo.
https://github.com/kishormohan/Reactapp.git

Command:
git clone https://github.com/kishormohan/Reactapp.git

3. Execute build script to create an Image. The Build script contains docker command to create Docker Image in the machine.
Filename - build.sh

Command:
chmod +x build.sh
./build.sh

4. Verify the status of the Docker Image 

Command:
docker images

5.Then execute the deploy script to spin a container. The Deploy script contains a docker command to run the created Image.
Filename - deploy.sh

Command:
chmod +x deploy.sh
./deploy.sh

6.Verify the status of the container.

Command:
docker ps 

7.Once the Container is up, the react application will be up and running. Access the application from port 8086
URL: localhost:8086

