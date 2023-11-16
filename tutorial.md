# Self host an Open Supports server

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

## Login your cli
Back in your local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Setup Server
Your server has several basic settings controlled by a secret object.  
 * **mysql_password** - database password
 * **timezone** - your timezone in <country>/<city> format.  ex. Europe/Bratislava

Create secrets for your application using acorn-cli.  Change the <> values to your actual credentials.
```
acorn secret create --data mysql_password=<uspassword> \
 --data timezone=<timezone> \
   opensupports
```

## Game Controls

**Main controls**

\[Enter\] - Start the game<br>
\[Space\] - Separate branches <br>
\[P\] - pause

**Intertwined mode**

\[A\] - Move left<br>
\[F\] - Move right

**Separated mode** (after pressing space)

\[A\] - Move left (left branch)<br>
\[S\] - Move right (left branch)

\[D\] - Move left (right branch)<br>
\[F\] - Move right (right branch)

## Setup the Game
To play this game, we will use a pre-made game image deployed on Acorn.  Acorn is a cloud based platform that makes it easy to deploy applications.  With Acorn, everything about the deployment is contained in one image which can be anything from a single container game to a large multi service application.

To deploy we created a free account on https://acorn.io.  Then we simply clicked "Deploy Acorn" > "From Acorn Image" on the dashboard.  For the Acorn Image we entered "ghcr.io/randall-coding/acorn/cs2_server:latest".  You can deploy your own server using the same method.

![ava_deploy](https://github.com/randall-coding/avabranch/assets/39175191/1974ab0e-3fb1-41a3-b4c0-b9a18dcc53a1)

Or you can deploy this acorn image by simply following this link https://acorn.io/run/avabranch?ref=randall-coding and clicking "Deploy"

## Play the Game
[PLAY NOW](https://avabranch-1b3e3022.ypkt0y.on-acorn.io) using our acorn deployment endpoint. 

Or if you deployed your own server you can find that endpoint by first clicking on the deployment in your acorn dashboard and then clicking the copy icon next to "web".

![ava_endpoint](https://github.com/randall-coding/avabranch/assets/39175191/c1edc5e1-3c81-491f-9de7-71f0799d67b4)


