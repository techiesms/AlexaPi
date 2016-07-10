# AlexaPi
 
---
 
### Contributors
 
* Sam Machin
 
---
This all are the files and code require to install Alexa Voice Service client on to your Raspberry Pi board. I have done this project in my Raspberry Pi 3 model. But as the contributor says, it can run in all the models of RPi. I have cloned this folder from the Sam Machin's account as he may update something in this files and may possible my tutorial video won't run after updating the files. So better I have cloned all the files into my account.
---
 
### Requirements

You will need:
* A Raspberry Pi
* An SD Card with a fresh install of Raspbian (tested against build 2015-11-21 Jessie)
* An External Speaker with 3.5mm Jack
* A USB Sound Dongle and Microphone
* A push to make button connected between GPIO 18 and GND
* (Optionally) A Dual colour LED (or 2 signle LEDs) Connected to GPIO 24 & 25


Next you need to obtain a set of credentials from Amazon to use the Alexa Voice service, login at http://developer.amazon.com and Goto Alexa then Alexa Voice Service
You need to create a new product type as a Device, for the ID use something like AlexaPi, create a new security profile and under the web settings allowed origins put http://localhost:5000 and as a return URL put http://localhost:5000/code you can also create URLs replacing localhost with the IP of your Pi  eg http://192.168.1.123:5000
Make a note of these credentials you will be asked for them during the install process

### Installation

Boot your fresh Pi and login to a command prompt as root.

Make sure you are in /root

Clone this repo to the Pi
`git clone https://github.com/sammachin/AlexaPi.git`
Run the setup script
`./setup.sh`

Follow instructions....

Enjoy :)

---
 

