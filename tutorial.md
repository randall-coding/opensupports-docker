# Self Host a Support Ticket Server

## Open Supports
Open Supports is a simple and elegant support ticket solution which you can host yourself.  As the name implies, Open Supports is open source and free to use when self hosted.        

The software allows customers to reach out to you with support tickets sent to the appropriate department at your company. Email alerts will be automatically sent to the appropriate admin user to manage those tickets **??????**.  The server can be configured to allow anonymous customer submissions or require a logged in user.   

The best part is a server can be setup in minutes when using a pre-made acorn image.

## What is Acorn? 

Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at (acorn.io)[https://acorn.io].  This can just be a free account, but if you'd like additional storate space you can look into the pro account or above

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with cli
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Setup Server
The server has several basic settings controlled by a secret object.  
 * **mysql_password** - database password
 * **timezone** - your timezone in <country>/<city> format.  ex. Europe/Bratislava

Create secrets for our application using acorn-cli.  Change the <> values to your actual credentials.
```
acorn secret create \
 --data mysql_password=<uspassword> \
 --data timezone=<timezone> \
   opensupports
```

## Deploying Acorn
Now that we have our secret file we can deploy our server from a pre-made image with just a click.
[CLICK HERE](link) to deploy.

[image](deploy image)

Now visit the dashboard and find your recent deployment.  Click on the name of your deployment and find the endpoint section in the right panel.  Click "copy" on the website endpoint and visit the link.

## Setup Open Support
You should now see the Open Support installation page.  NOTE: If you have an error on refreshing the page, access the link in a new private window to fix it.  

Fill in the following information:
- MySQL Host: `mariadb`
- MySQL server port: `<can leave blank>`
- MySQL Database: `opensupports`
- MySQL User: `opensupports`
- MySQL Password: `<password you wrote in your secret file>`

** Setup email notifications **

To setup email notifications you will need your SMTP server information (you might want to have a developer do this if you're unfamiliar).  

Fill in the following fields for SMTP:

* Email server address - `<the email address of the sender>` 
* SMTP Server - `<the smtp server url>` 
* SMTP User - `<the email address of the sender>` 
* SMTP Password - `<the email address password>` 

For more detailed instructions watch [this video](https://www.youtube.com/watch?v=dEtALRMdOhs).

** Create admin account ** 

Simply put in your admin username, email and password.  

## Using Open Support

Visit http://localhost:5543/admin to login with your admin email and password.

Create your first ticket by clicking the "Ticket" tab in the nav bar and then "+ Create Ticket"

You've now created your first ticket.

## References 

* [Setting up SMTP](https://www.youtube.com/watch?v=dEtALRMdOhs).
* [OpenSupports installation guide](https://docs.opensupports.com/guides/installation/)
* [OpenSupports documentation](https://docs.opensupports.com/)