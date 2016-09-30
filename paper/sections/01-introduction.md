##Introduction
This project will attempt to outline the steps needed to compile a project using Terminal/Command Prompt/Bash commands, GitHub, and Markdown. In order to be able to take on such a task, the first step is to learn the associated tools. As an introduction, I will breakdown the tools I used to compile this project. 

###Terminal/Command Prompt/Bash commands 
For Mac users, you would use The Terminal to input commands. For Windows users, you would use Command Prompt or for Windows 10 users, you may also use Bash on Ubuntu on Windows. I use the Bash because of its compatibility with commands used in The Terminal. Some of the common commands I used for this project are make, git, and pandoc. 

###Make
In order to use the command make, you must have a file named Makefile in your working directory. This file contains commands which are grouped under target files. For instance, you may choose to run a concatenating command which will generate an output file. Your target file in this case would be the output file name. I will further explain the specific details of the Makefile pertaining to this project later on. 
Running the command make will run the first set of commands under the first target. This may change if the first target depends on a later target to run. Then make will also run those targets before it can run the commands of the first target. Make is helpful for automating commands and keeping track of commands. This way it is easier to go back to reference the commands used to output the project. So if I was to remake this project, I wouldnt have to go back and remember the commands I used to compile the project file. 

###Git
This is a command used to keep track of the changed you have made to your project. You initialize this in the folder of your project by using the git init. This will then subsequently make note of any changes make in that folder and any subdirectories. In order to add changes you use git add and the name of the changed file. Then once the changes have been added, you may commit then using git commit and again the name of the changed file. When you commit you want to add a good commit messages that discusses the changes that you made so that you may reference them later. Git makes it easier to go back and reproduce the project because you have a log of all the commits which you can go back and reference. This is the git logo: 

![Git Logo](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/git-logo.png)

Once you have git initialized in your folder, you can link it to a GitHub repository. A GitHub repository is basically an online folder. When you have committed changes in your folder, then you can push the changes you made onto the GitHub repository using git push. This is the GitHub Logo: 

![GitHub Logo](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/github-logo.png)


###Markdown 
This is a markup language that you use to format plain text. When I first write up the content of this project, I use a markdown file. This type of file allows me to make lists: 

* cat 
* dog 
* fish 

Or make words **italicized** or *bold* (switched on purpose). These are a few examples. Markdown files can be easily converted into other formats such as html which is also what I did in this project as I will explain later. This is the Markdown logo: 

![Markdown Logo](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/markdown-logo.png)


###Pandoc 
This is a command used to change files from one format into another. For this project, we take a markdown file and convert it to an html file using pandoc. This is helpful since markdown is a much easier language to type content into. However, html is easily accessed. Pandoc allows us to work with a simple markup language, yet still get the advantaged of other formats, such as html. This is the Pandoc logo: 

![Pandoc Logo](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/pandoc-logo.png)


Now with this basic understanding of the tools involved I will go into the steps I took to make this project. 

