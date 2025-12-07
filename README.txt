# Docker_Devops
Course from Udemy by Imran
We already have an AWS Ec2 instance on which docker engine is installed
TASK: Let’s take a website from tooplate.com and we will host it on Apache2 service running in an ubuntu container.

To get the Request URL: Go to tooplate.com, select and open one template. Press F12, click on download which we can cancel in between, look at network space for the zip file name click on it which shows the Request URL copy that.
Ex: https://www.tooplate.com/zip-templates/2147_titan_folio.zip

1. Let’s create a directory to do this lab ex: images. and download this template using command wget <RequestURL> which gives a zip file. Unzip it, unzip <zipFile>.
2. Now get into extracted folder and tar that data. tar czvf nano.tar.gz * (archiving everything in the current directory with the name nano.tar.gz. So now this tar ball is like artifact.
3. Write the Dockerfile
4. Build an image using: docker build -t <CustomImageName> <pathofDockerfile>. ex: docker build -t nanoimg .. Once build completes, run docker images which shows nanoimg.
5. To create a container from image use, docker run -d --name nanowebsite -p 9080:80 nanoimg
6. To test, In browser give <PublicIPofInstance>:9080. Now We have containerized our application.
7. Let’s push our image to DockerHub. Create an account in DockerHub if not have. In order to push our image to DockerHub or any registry, the image name should be accountName/imageName, example my DockerHub account name is upadma, then upadma/nanoimg. Build the image again, it’s ok because image ID will be same even if we build again. docker build -t upadma/nanoimg .. 
8. To login to DockerHub from Docker engine, command is docker login, give your DockerHub username and password.
9. To push the image, docker push upadma/nanoimg. Now our image publicly available on DockerHub as we didn’t make it private.
10. Now we can delete the images locally and do docker run -d --name nanowebsite -p 9080:80 upadma/nanoimg,  when we run it, first it will check any image with this name available locally or not, if not then check in DockerHub and pull it from there.


