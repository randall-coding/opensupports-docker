# Self Host a Support Ticket Server

## Open Supports
[Open Supports](https://www.opensupports.com) is a simple and elegant support ticket solution which you can host yourself.  As the name implies, it is open source and free to use when self hosted.        

This software allows customers to reach out to you with support tickets directed to the appropriate department at your company. Email alerts will be automatically sent to the staff users to manage those tickets.  The server can be configured to allow anonymous customer submissions or require a logged in user to create a ticket.   

The best part is this server can be setup in minutes using a pre-made acorn image.

## What is Acorn? 

Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storate space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

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
 * **username** - database username
 * **password** - database password
 * **timezone** - your timezone in <country>/<city> format.  ex. Europe/Bratislava

Create secrets for your application using acorn-cli.  Change the <> values to your actual credentials.
```
acorn secret create \
 --data timezone=<timezone> \
   opensupports
```

```
acorn secret create mariadb-user --data username=<db username> --data password=<db password>
```

## Deploying Acorn
Now that we have our secret file we can deploy our server from a pre-made image with just a click.

[CLICK HERE](link) to deploy. You should see a screen like the one below.

![deploy_link_open_supports](https://github.com/randall-coding/opensupports-docker/assets/39175191/275cedeb-6b3a-4b1f-a462-48276b105758)

Now visit the dashboard and find your recent deployment.  Click on the name of your deployment and find the endpoint section in the right panel.  Click "copy" on the website endpoint and visit the link.

## Setup Open Support
When you visit your endpoint, you should now see the Open Support installation page.  <br><small>(NOTE: If you have an error on refreshing the page, access the link in a new private window to fix it)</small>

Click through to step 3

![Screenshot from 2023-11-17 14-33-00](https://github.com/randall-coding/opensupports-docker/assets/39175191/6f6276e2-5a39-4ddc-bc1b-2e6de561db72)

Fill in the following information:
- MySQL Host: `mariadb`
- MySQL server port: `<leave blank>`
- MySQL Database: `opensupports`
- MySQL User: `opensupports`
- MySQL Password: `<password you wrote in your secret file>`

### Setup email notifications

To setup email notifications you will need your SMTP server information.  You might want to have a developer do this if you're unfamiliar.  

Fill in the following fields for SMTP:

* Email server address - `<the email address of the sender>` 
* SMTP Server - `<the smtp server url>` 
* SMTP User - `<the email address of the sender>` 
* SMTP Password - `<the email address password>` 

For more detailed instructions watch [this video](https://www.youtube.com/watch?v=dEtALRMdOhs).

### Create admin account 

Simply put in your admin username, email and password.  

## Using Open Support

Visit http://localhost:5543/admin to login with your admin email and password.

Create your first ticket by clicking the "Ticket" tab in the top navigation and then click "+ Create Ticket".

You've now created your first ticket, congrats!  See the guides below for further reading to explore all the Open Supports features.

## References 

* [Setting up SMTP](https://www.youtube.com/watch?v=dEtALRMdOhs).
* [OpenSupports installation guide](https://docs.opensupports.com/guides/installation/)
* [OpenSupports documentation](https://docs.opensupports.com/)
