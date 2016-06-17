## Setting up the development environment

You can use [Oomph](https://www.eclipse.org/oomph) to deploy a ready to go Eclipse IDE with the projects imported and all required dependencies already installed.

The setup file to add as a project in the [Oomph installer](https://wiki.eclipse.org/Eclipse_Oomph_Installer) is found in the main [readme](https://github.com/IncQueryLabs/incquery-examples-cps/blob/master/README.md).
  * Git password is required for [Mylyn integration](http://eclipse.github.io/) to see tasks and pull requests, if you don't want that, just enter a whitespace.
  * For the repository URI, select Git only if you have a public key added to GitHub and the private key set up correctly.

Read the [Oomph help](http://download.eclipse.org/oomph/help/org.eclipse.oomph.setup.doc/html/user/wizard/index.html) if you are lost in the wizard's forest.

## Creating new projects

* Copy one of the existing projects to make sure that all preferences are set correctly
* Don't forget to correctly rename the project and update the metadata
* Update the ```pom.xml``` in the new project (only the ```artifactId``` has to be changed at first)
* Add the new module to the parent ```pom.xml``` in the root of the repository