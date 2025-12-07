# Docker_Devops
Course from Udemy by Imran

TASK: Let’s take a website from tooplate.com and we will host it on Apache2 service running in an ubuntu container.

To get the Request URL: Go to tooplate.com, select and open one template. Press F12, click on download which we can cancel in between, look at network space for the zip file name click on it which shows the Request URL copy that.
Ex: https://www.tooplate.com/zip-templates/2147_titan_folio.zip

1. Let’s create a directory to do this lab ex: images. and download this template using command wget <RequestURL> which gives a zip file. Unzip it, unzip <zipFile>.
2. Now get into extracted folder and tar that data. tar czvf nano.tar.gz * (archiving everything in the current directory with the name nano.tar.gz. So now this tar ball is like artifact.
3. Write the Dockerfile
4. Build an image using: docker build -t myimg .
