#An Introduction to Creating Reproducible Reports
####By Bryana Gutierrez

##Abstract 
This project is an example of a reproducible research. In this project I look at how to describe the process of making a project that can be easily reproduced. I do this by using tools such as make, pandoc, git, and markup. These tools are fairly simple to use and some such as git allow you to track any changes you have made to your project so that you have a reference if you attempt to reproduce. This project may be used as a reference for completing your own reproducible research. 

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

##The Process
Now to get to the meat of the project. When you first start the project you can to make a file on your computer to hold all the materials. Similarly, you want to create a repository in GitHub. To link these two you use the git command. This can be one of the trickier parts if it is your first time connecting The Terminal/Command Prompt/Bash to your GitHub account. You have to create an SSH (Secure Shell) key that connects you remotely to your GitHub account. Although you dont need a complete understanding of how this works, you just need to follow the directions on GitHub for setting up this connection.  

Once the connection is created you can link your specific project file to the project repository. Then you can begin adding to your project. I started off making the directory structure. For this project we wanted to have two directories in the main folder, paper and images. Under paper you have the directory sections under which I initialized four sections: abstract, introduction, discussion, conclusion. This is probably the easiest part of the project. Now with this structure I began adding content. 

In the main project folder you want to add information about the project to your README file. This file gives insight into the structure of the file as well as licensing information. You also want to include a .gitignore file that can be used to tell git to ignore the files listed within the file. This allows you to control what gets tracked by the git command. In addition to these two files, in your main project folder you want to include a Makefile. As previously mentioned, this file can help you track the commands you used to compile your project. Before writing any content for the paper, I initialized the Makefile. You begin by making Makefile in your choice of text editor. I used vim in Bash. In the Makefile you want to include the command you used to concatenate the sections into the paper and then convert this markdown file into html. The first step is done by making your target file paper.md then include the dependent files which are the section files. After this initial structure, you include the command that concatenates the sections and assigns it to paper.md. The second step is done by making paper.html the target file and paper.md as your dependent file. Then under this you include the command pandoc that would change your paper.md file into html. One way to simplify the inputs in the Makefile is to use variables and wildcards. Variables can be used so that if you want to go back and change the file used you only need to change the name in the variable assignment. Wildcards are helpful when you are referring to many files with similar names. In this part it might be helpful to look up examples from the internet. I referenced my class notes as well as the internet. 

At this point you have all of the structure for the project. Now is when you download the images of the different logos into your images directory by using the curl command. This is also when you write the content for your sections. You do this using Markdown syntax. This part takes the most amount of time. I also found it challenging choosing how much to say. I can easily explain into gruesome detail, but that would take 20 pages per section. Once this part is done, then you go to your main project file in Terminal/Command Prompt/Bash and run make. This will run the commands of the Makefile. This will create paper.md and then if you want the second target to run as well you can type make paper.html (the name of the second target) and this will also create the html version of your final project paper. 


##Concluding Remarks

The html file is the final result of the project. This project is an example of how to create a simple reproducible project. The tools and steps outlined are the ones I took to create this project, but there are many variations. Although the point of reproducible research is to recreate, it also instructive to innovate. Perhaps there are more interesting and easier to follow ways in which this project can be made. If you find this to be true, I would encourage you to make your own version.

This project was done for the purposes of Stat 159, an undergraduate statistics class taught at UC Berkeley by Professor Gaston Sanchez. Here is the Stat 159 logo:

![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/stat159-logo.png)

