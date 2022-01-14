# How to Set Up Your Course Account

## Installing VScode
We need a place on our computer to edit our code. There are a lot of popular choices, but we will use Visual Studio Code (VSCode) from Microsoft. 

Download and install VSCode [here](https://code.visualstudio.com/). Follow their instructions for installing it on your machine.

When you finish you should be able to open VSCode and see a screen like this (mine may look different due to different themes, fonts, etc): 

![VSCode.png](VSCode.png)

## Remotely Connecting
A lot of CSE courses involve using the UCSD lab computers. However, sometimes we are not able to physically access these computers. To get around this, let's remotely connect to the UCSD servers.

First, open a terminal in VSCode (Control + Shift + `, or use the menu). Then, type in this command:

```
ssh cs15lwi22<xyz>@ieng6.ucsd.edu
``` 
You will have to replace the "\<xyz\>" with your id.

You might get a message along the lines of "the authenticity of so-and-so cannot be established. Do you want to connect?" Say yes (we already know who we are connecting to). Enter you account password (you can set that [here](https://sdacs.ucsd.edu/~icc/index.php)).

The final product should look something like this:

![ssh.png](ssh.png)

