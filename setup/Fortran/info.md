Fortran
===

Version: GNAT 6.2.0
Path: standard system paths

Project Link: N/A
Download Link: N/A
Prerequisites: N/A
Installation Notes:

I am using the Intel OneAPI compilers (see notes below for reasons why).
Unfortunately, there is no way to install these offline that I can find.
That means that the procedure is going to change as time goes on.

Currently, the procedure is as follows:

  - Get and install the Intel OneAPI base toolkit:

```
wget https://registrationcenter-download.intel.com/akdlm/irc_nas/18487/l_BaseKit_p_2022.1.2.146.sh

sudo sh ./l_BaseKit_p_2022.1.2.146.sh
```
  - This will launch a GUI installer for the Base OneAPI. Install the
    full toolkit.

  - Get and install the Intel HPC toolkit:

```
wget https://registrationcenter-download.intel.com/akdlm/irc_nas/18479/l_HPCKit_p_2022.1.2.117.sh

sudo sh ./l_HPCKit_p_2022.1.2.117.sh
```
   - Install the Fortran compilers
   - Add `ifort` to your PATH.

Other: The benchmark uses ifort 17.0.3. However, the following forum link 
suggests that without paid Parallel Studio XE support, this compiler is now
impossible to find.

https://community.intel.com/t5/Intel-Fortran-Compiler/Where-to-download-Fortran-compiler-iFort-v17-0-6-256/m-p/1292182

So I will try to use the current oneAPI compilers instead.
