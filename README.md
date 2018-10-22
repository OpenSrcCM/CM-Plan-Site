### Introduction

The repo is maintained to support **Modern Development Process** (MDP) environment approaches and ideas. Experimenting with available Open Source tools, the following concepts are explored and developed:

- Configuration Management
- Security
- Virtual Machines
- Branching and Merging
- Repository Forking
- Continuous Integration Continuous Deployment CI/CD

Following the instructions in this file will result in a running Virtural Machine, in your workstation memory, hosting the website developed and maintained in this repository.
 
### Purpose

Encourage a DevOps culture in a team with team trusted Subject Matter Experts (SMEs).

  :notebook: ***NOTE***:
  
   - The production environment of this website could be installed to an internal company system.

The [Context Diagram](/app/site/teamTools/EMM-CM-ContextDiagram.pdf) provides end to end visibility to the steps, roles, and tools used by a DevOps team to create, test, and deliver change. ***(Insert NDP image here)***

### Installation

This will be installed as a service website to your workstation. After addressing the following prerequisites, you have an executable example of _**Deployment Automation**_.

#### Prerequisites

* Install Git on your system per the [Install Git](/app/site/newstuff/GitInstallationProcedure.adoc) procedure.
* Install the [VirtualBox](https://www.virtualbox.org/) application on your workstation.
* Install the [Vagrant](https://www.vagrantup.com/) application on your system.

:notebook: ***NOTES***:

1. Having sufficient memory in your workstation is assumed.
2. All above Prerequisites can be installed on Windows or Mac workstations.
3. The following commands assume these prerequisites have been installed on your workstation as prescribed.

* Using the git command-line window, prepare to your workstation with the following commands from your home directory:

![Prepare Workstation](/images/prepare-ws.png)

### Initial VM Website

At this point, your system is ready to establish the CM Plan Website on your workstation. Execute the following command in the git command-line window:

![Build WS Website](/images/build-ws-website-vm.png)

The above command will take a few minutes producing a log of tasks completed. When it is done, using your favorite browser, enter the following URL in the address bar:

http://127.0.0.1:1234/

This is a website running from your workstations memory. At this point you have a working example of a website running on your workstation in a Virtual Machine (VM). Everything used to create and deploy this website is available to you via the git repo CM-Plan-Site directory.

### Automate From the Beginning

A goal of the MDP is to have automation from the beginning to the end of the development cycle.

To build automation from the initial GitHub clone execution:
1. Verify you have a ~/bin directory on your workstation. 
2. Copy ~/repo-workareas/CM-Plan-Site/app/bin/NE-startup.bsh ~/bin
3. vim ~/bin/NE-startup.bsh
 - Edit **Script Confgiuration variables** section for your workstation environment and save
4. cd to ~/repo-workareas/CM-Plan-Site/deploy
5. execute ***./enable-functionality.bsh***
6. execute ***vagrant destroy***
7. remove (or rename) ~/repo-workarea/CM-Plan-Site
8. Get local to ~/repo-workareas directory

At this point you can execute the following command to, clone from GitHub and build the VM Website in your workstation memory.

9. execute ~/bin/NE-startup.bsh 0 0 0

:point_right: ***Recommendation***:

- Execute the entire cycle from previous execution of **NE-startup.bsh** to **vangrant destroy** on a daily basis.

:notebook: ***NOTES***:

1. The enable-functionality.bsh script was drafted to support development integration cycles.
2. This environment has vagrant VM creating running from CM-Plan-Site/deploy
  
### Managing Virtual Machine(s)

Everytime you fully excerise "build - package - deploy", you will need to run the enable-functionality.bsh script. The vagrant commands for the VM build with this system are usually run from the **deploy** directory. Be sure to checkout your Vagrant options:

$ vagrant -h
