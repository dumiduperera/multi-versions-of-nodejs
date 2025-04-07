# multi-versions-of-nodejs
This is a few lines of powershell script to keep multiple versions of Nodejs in a windows system.

There are situations that you need to keep multiple versions of Nodejs in the same OS. For this you can use the NVM which is the well know solution. This solution is important when you are in a fully resticted environment for software installation. This applicaiton I have built because of even running the non-installable NVM version also prohibited.

In this solution, I just download the node version and unzip into a direcotory where I have access. Then I just add an "Environment Variable" in user wise. So that you can simply run node js at anywhere. This powershell script is to just change the path of the "Path" variable in "Environment Variables"
