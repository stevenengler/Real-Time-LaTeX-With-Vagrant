# Real-Time-LaTeX-With-Vagrant
Easily set up a LaTeX environment with Vagrant on any operating system. This sets up vanilla Tex Live on a Vagrant precise box and runs a python script to compile latex source code in real-time.

### Required Programs

 1. [VirtualBox](https://www.virtualbox.org/)
 2. [Vagrant](https://www.vagrantup.com/)

### Recommended Programs (for Windows)

 * [Notepad++](https://notepad-plus-plus.org/)
 * [SumatraPDF](http://www.sumatrapdfreader.org/free-pdf-reader.html)
 * [Babun](https://babun.github.io/)

### How to Set Up

 1. Install VirtualBox and Vagrant.
 2. Open a terminal / command prompt in the directory of the Vagrantfile.
 3. Run ```vagrant up``` to build and start the Vagrant environment. This will download Tex Live with some packages (approx 600mb total) and install it.
 4. Run ```vagrant halt``` to shutdown the Vagrant virtual machine.

### How to Use

Simply save your *.tex files in the LaTeX_documents directory and create a "latex_project.config" file that points to your tex file. The directory that you save the "latex_project.config" file in will be the projet directory. The file must have a line with the path of the tex file to be compiled. If any files in the project directory (recursively) are modified, the file pointed to by the "latex_project.config" file will be compiled. All of the files from the compilation process (including the pdf) will be stored in a new directory named "compiled/", which will be in the project directory (where the "latex_project.config" is located). You can have multiple projects in the LaTeX_documents directory. Projects outside of the LaTeX_documents directory are not watched by this program and will not be compiled.
 
### How to Use With Notepad++ and SumatraPDF

SumatraPDF automatically reloads any open PDF files when they're changed, and also supports inverse search using synctex. Open the PDF in SumatraPDF, and open the tex file in Notepad++. If the Vagrant environment is running, any changes that are made in Notepad++ will automatically be seen in SumatraPDF. The Windows *snap* feature is useful to snap SumatraPDF to one side of the screen, and Notepad++ to the other.

### Example Directory Structure

 - LaTeX_documents
    - Report
	   - latex_project.config
	   - report.tex
	   - compiled
	      - report.pdf
		  - report.log
		  - etc...
    - School
	   - Computer Science
	      - latex_project.config
		  - source
	         - document.tex
			 - introduction.tex
			 - section_one.tex
		  - images
		     - flowchart.png
	      - compiled
	         - document.pdf
		     - document.log
		     - etc...