# springerlink-user-journey

# The aim of the repo:
This test suite will serve a solution against the needs of testing regarding the user journeys of the product springer link. The test design in the first three questions will be in the text format. Lastly, the user journey automation will run on the RobotFramework which supports BDD. I choose RobotFramework because; the question is mentioning about user journey tests where it is necessarily reasonable to rely on BDD or ATDD. So, since the robotframework it is adjustable and readable for business people and is easy to use in CI/CD pipelines, I prefer to go with RobotFramework.

# Assumptions for All Tasks:
For all the tasks, all features are delivered using continuous delivery i.e each build goes straight to production without manual intervention. There is no preprod or staging environment with all integrations in place.
NOTE: Please elaborate on all types of tests that are needed within the team irrespective of whether QA writes them or not.


# How to Run the Automation Solution:

As mentioned above, the solution relies on the robotframework. 

Therefore, please, first setup/install the list below:

python3: brew install python3
pip: brew install pip
Robot Framework: pip install robotframework
SeleniumLibrary (For RobotFramework): pip install --upgrade robotframework- seleniumlibrary
WebDriverManager (For RobotFramework): pip install webdrivermanager
    to configure the desired browser, please insert the command: webdrivermanager firefox chrome --linkpath /usr/local/bin

Execution:
After cloning the repo, please go to the directory Task 4
then in the command line type:
robot springerlink-keywords.robot

After the execution the commandline should return the report directory. It would be easy to review the details.

