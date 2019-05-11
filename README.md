### Introduction

The repo is maintained to support **Modern Development Process** (MDP) environment approaches and ideas. Experimenting with available Open Source tools, the following concepts are explored and developed:

- Configuration Management
- DevOps
- Security
- Virtual Machines
- Branching and Merging
- Repository Forking
- Continuous Integration Continuous Deployment CI/CD

:notebook: ***NOTES***:

  > 1. Since GitHub is the repository system for this repo, the [GitHub help](https://help.github.com/) page is a primary reference.
  > 2. An in-depth understanding of Git via [SCM-Git](https://git-scm.com/) opens many opportunities as your MDP understanding develops. 

Following the instructions in this file will result in a running Virtural Machine, in your workstation memory, hosting the website developed and maintained in this repository.
 
### Purpose

Encourage a DevOps culture in a team with team trusted Subject Matter Experts (SMEs).

#### _Premise_
_If a development team does not prioritize development first, they may be an OpsDev team, meaning "All hands on deck until corrected" when there is a production problem. This type of environment puts the operation of production ahead of development. To put development first, consider the goal of DevOps._

A good step toward this goal is building development environments automatically from the Operating System up. This approach can be built upon to automate deployments to shared environments like production. If the steps for building and deploying to shared environments are automated, development is free to focus more on development tasks rather than supporting operations of shared environments.

Ops can become second to Dev when production deployments are automated.

The first goal of this repo is to provide a working example of creating a development environment in workstation memory.

  :notebook: ***NOTE***:
  
   > - The production environment of this website could be installed to an internal company system.

The [Context Diagram](/app/site/teamTools/CM-ContextDiagram.pdf) provides end to end visibility to the steps, roles, and tools used by a DevOps team to create, test, and deliver change. ***(Insert MDP image here)***

### Installation

This will be installed as a service website to your workstation. After addressing the following prerequisites, you have an executable example of _**Deployment Automation**_.

#### Prerequisites

* Install Git on your system per the [Install Git](/app/site/newstuff/GitInstallationProcedure.adoc) procedure.
* Install the [VirtualBox](https://www.virtualbox.org/wiki/Downloads) application on your workstation.
* Install the [Vagrant](https://www.vagrantup.com/downloads.html) application on your system.

:notebook: ***NOTES***:

 > 1. Having sufficient memory in your workstation is assumed.
 > 2. All above Prerequisites can be installed on Windows or Mac workstations.
 > 3. The following commands assume these prerequisites have been installed on your workstation as prescribed.
 >> a. Address all sections of the Install Git procedure before moving on.

* Using the git command-line window, prepare to your workstation with the following commands from your home directory:

![Prepare Workstation](/images/prepare-ws.png)

### Initial VM Website

At this point, your system is ready to establish the CM Plan Website on your workstation. Execute the following command in the git command-line window:

![Build WS Website](/images/build-ws-website-vm.png)

The above command will take a few minutes producing a log of tasks completed. When it is done, using your favorite browser, enter the following URL in the address bar:

http://127.0.0.1:1234/

:notebook: ***NOTES***:

> 1. The arguments to ./cm-plan-service.bsh correspond to release values Major, minor, and patch respectively. refer to [semantic versioning](http://semver.org/) for details.
> 2. It is recommended you use the latest Major minor patch values per the CM-Plan-Site [releases](https://github.com/cmguy/CM-Plan-Site/releases) page for initial `git clone` executions. If no patch value is indicated, enter "0" for the patch argument.

This is a website running from your workstations memory. At this point you have a working example of a website running on your workstation in a Virtual Machine (VM). Everything used to create and deploy this website is available to you via the git repo CM-Plan-Site directory.

### Automate From the Beginning

A goal of the MDP is to have automation from the beginning to the end of the development cycle.

To build automation from the initial GitHub clone execution:
1. Verify you have a ~/bin directory on your workstation
   - If not, create it with mkdir command
2. Copy ~/repo-workareas/CM-Plan-Site/app/bin/NE-startup.bsh ~/bin

![Automation-1](/images/auto-steps-1-2.png)

3. vim ~/bin/NE-startup.bsh

![Automation-2](/images/vim-startup.png)
   - Edit **Script Confgiuration variables** section for your workstation environment and save
![Automation-3](/images/edit-startup.png)
4. cd to ~/repo-workareas/CM-Plan-Site/deploy
5. execute `./enable-functionality.bsh`
6. execute `vagrant destroy`
   - It's a good idea to have the Oracle VM VirtualBox Manager up and running so you can monitor.
7. remove (or rename) ~/repo-workareas/CM-Plan-Site
8. Get local to ~/repo-workareas directory
![Automation-4](/images/steps-4-thru-8.png)

At this point you can execute the following command to, clone from GitHub and build the VM Website in your workstation memory.

9. execute ~/bin/NE-startup.bsh 0 0 0

:point_right: ***Recommendation***:

 > - Execute the entire cycle from previous execution of **NE-startup.bsh** to **vangrant destroy** on a daily basis.

:notebook: ***NOTES***:

 > 1. The enable-functionality.bsh script was drafted to support development integration cycles.
 > 2. The arguments to ./NE-startup.bsh correspond to release values Major, minor, and patch respectively. refer to [semantic versioning](http://semver.org/) for details.
 > 3. This environment runs vagrant from CM-Plan-Site/deploy to create and manage the VM.
 > 4. The deploy/VMlog.txt is a full report of the "building" of your VM.
  
### Managing Virtual Machine(s)

Everytime you fully exercise "build - package - deploy", you will need to run the enable-functionality.bsh script.

This ensures your are testing any changes made to /app/bin/Vagrant files at least daily. This also assumes you are not making vagrant file updates in the /deploy directory. Refer to the /deploy/README.txt.

Be sure to checkout your Vagrant options:

 > $ vagrant -h
