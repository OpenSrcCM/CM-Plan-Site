### Introduction

The repo is maintained to support **Modern Development Process** environment approaches and ideas. Experimenting with available Open Source tools, the following concepts are explored and developed:

- Security
- Virtual Machines
- Branching and Merging
- Repository Forking
- Continuous Integration Continuous Deployment CI/CD

Following the instructions in this file will result in a running Virtural Machine hosting the website developed and maintained in this repository.
 
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
  
1. All above Prerequisites can be installed on Windows or Mac workstations.
2. The following commands assume these prerequisites have been installed on your workstation as prescribed.

* Using the git command-line window, prepare to your workstation with the following commands from your home directory:

![Prepare Workstation](/images/prepare-ws.png)

### Initial VM Website

At this point, your system is ready to establish the CM Plan Website on your workstation. Execute the following command in the git command-line window:

![Build WS Website](/images/build-ws-website-vm.png)

The above command will take a few minutes producing a log of tasks completed. When it is done, using your favorite browser, enter the following URL in the address bar:

http://127.0.0.1:1234/

This is a website running from your workstations memory. At this point you have a working example of a website running on your workstation in a Virtual Machine (VM). Everything used to create and deploy this website is available to you via the git repo CM-Plan-Site directory.

### Automate From the Beginning

To build automation from the initial GitHub clone:
1. Verify you have a ~/bin directory on your workstation. 
1. Copy ~/repo-workareas/CM-Plan-Site/app/bin/NE-startup.bsh ~/bin
3. vim ~/bin/NE-startup.bsh
 - Edit **Script Confgiuration variables** section for your workstation environment and save
4. cd to ~/repo-workareas/CM-Plan-Site/deploy
5. execute ./enable-functionality.bsh
6. execute vagrant destroy
7. remove (or rename) ~/repo-workarea/CM-Plan-Site
8. Get local to ~/repo-workareas directory

At this point you can execute the following command to, clone from GitHub and build the VM Website in your workstation memory.

9. execute ~/bin/NE-startup.bsh 0 0 0

:point_right: ***Recommendation***:

- Execute the entire cycle from previous execution of **NE-startup.bsh** to **vangrant destroy** on a daily basis.

To go into development mode:

[source asciidoc]
----
userid@host MINGW64 ~/repo-workareas/CM-Plan-Site/deploy
$ ./enable-functionality.bsh

userid@host MINGW64 ~/repo-workareas/CM-Plan-Site/deploy
$
----

Everytime you fully excerise "build - package - deploy", you will need to run the enable-functionality.bsh script. Be sure to checkout your Vagrant options:


[source asciidoc]
----
userid@host MINGW64 ~/repo-workareas/CM-Plan-Site/deploy
$ vagrant -h
Usage: vagrant [options] <command> [<args>]

    -v, --version                    Print the version and exit.
    -h, --help                       Print this help.

Common commands:
     box             manages boxes: installation, removal, etc.
     connect         connect to a remotely shared Vagrant environment
     destroy         stops and deletes all traces of the vagrant machine
     global-status   outputs status Vagrant environments for this user
     halt            stops the vagrant machine
     help            shows the help for a subcommand
     init            initializes a new Vagrant environment by creating a Vagrantfile
     login           log in to HashiCorp's Vagrant Cloud
     package         packages a running vagrant environment into a box
     plugin          manages plugins: install, uninstall, update, etc.
     port            displays information about guest port mappings
     powershell      connects to machine via powershell remoting
     provision       provisions the vagrant machine
     push            deploys code in this environment to a configured destination
     rdp             connects to machine via RDP
     reload          restarts vagrant machine, loads new Vagrantfile configuration
     resume          resume a suspended vagrant machine
     share           share your Vagrant environment with anyone in the world
     snapshot        manages snapshots: saving, restoring, etc.
     ssh             connects to machine via SSH
     ssh-config      outputs OpenSSH valid configuration to connect to the machine
     status          outputs status of the vagrant machine
     suspend         suspends the machine
     up              starts and provisions the vagrant environment
     validate        validates the Vagrantfile
     version         prints current and latest Vagrant version

For help on any individual command run `vagrant COMMAND -h`

Additional subcommands are available, but are either more advanced
or not commonly used. To see all subcommands, run the command
`vagrant list-commands`.

userid@host MINGW64 ~/repo-workareas/CM-Plan-Site/deploy
$
----

When you are ready to shutdown your cm-plan-service VM, use the vagrant destroy option:

[source asciidoc]
----
userid@host MINGW64 ~/repo-workareas/CM-Plan-Site/deploy
$ vagrant destroy
    default: Are you sure you want to destroy the 'default' VM? [y/N] y
==> default: Forcing shutdown of VM...
==> default: Destroying VM and associated drives...

userid@host MINGW64 ~/repo-workareas/CM-Plan-Site/deploy
$
----

