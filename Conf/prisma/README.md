**TEMPLATE CONFIGURATION FOR PRISMA LIBRARY**

For each experiment, a dedicated branch will be created containing the parameters used in the online analysis. These template files are only given as an exemple of the configuration files. The online analysis parameters of the experiment should represent a much better starting point for the offline-analysis.

**The configuration file are organized as follow:**
1.  manager.conf: Contains the absolute path to all the configuration files for the different detectors included in the readout of PRISMA and the configuration used for the trajectory reconstruction.
1.  binarypartner.conf
1.  dantecalculator.conf
1.  danteManager.conf
1.  ionch.conf
1.  labr.conf


**Detector configuration files:**
1.  mcp.conf: Configuration of the entrance MCP detector
1.  ppac.conf: Configuration of the focal plane detector
1.  ionch.conf: Configuration of the 40 section of the ionization chamber used for the Z-identification
1.  side.conf: Configuration of the ionization chamber sides used as veto in the analysis
1.  danteManager.conf
1.  labr.conf -- Not used for the AGATA campaign since LaBr3 detectors have their dedicated readout
1.  secondarm.conf -- Not used for the AGATA campaign since the second arm is mechanically not compatible with AGATA

 
**Trajectory reconstrution files:**
1.  zed.conf: Configuration of the Z-identification in PRISMA. Here you can select the method used to for the Z-gates between E-DE(A), E-DE(A+B) or E-Range
1.  solver.conf: Trajectory reconstruction parameters
1.  mass.conf: Configuration for the A-indentication in PRISMA. 
1.  dantecalculator.conf: Parameters used for Dante

