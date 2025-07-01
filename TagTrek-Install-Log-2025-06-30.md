---
project: tag-trek
type: install-log
date: 2025-06-30
publish: true
---

# 🛠️ Sprint 0 - Tool Install Log

- [X] ** Temurin JDK 21**
1. Install using winget:
```shell
# Windows
winget install EclipseAdoptium.Temurin.21.JDK
```
2. Verify in new shell:
```shell
C:\Users\Jim%3Ejava -version
openjdk version "21.0.7" 2025-04-15 LTS
OpenJDK Runtime Environment Temurin-21.0.7+6 (build 21.0.7+6-LTS)
OpenJDK 64-Bit Server VM Temurin-21.0.7+6 (build 21.0.7+6-LTS, mixed mode, sharing)
```

- [x] **Node.js** ✅ 2025-06-30
1. Download installer from website https://nodjs.org
2. Run installer
    1.  Installed in `D:\Tools\Node\`
    2.  Installer installed Chocolatey, Python, and additional tools
```text
1. Tools for Node.js Native Modules Installation Script
====================================================

This script will install Python and the Visual Studio Build Tools, necessary
to compile Node.js native modules. Note that Chocolatey and required Windows
updates will also be installed.

This will require about 3 GiB of free disk space, plus any space necessary to
install Windows updates. This will take a while to run.

Please close all open programs for the duration of the installation. If the
installation fails, please ensure Windows is fully updated, reboot your
computer and try to run this again. This script can be found in the
Start menu under Node.js.

You can close this window to stop now. Detailed instructions to install these
tools manually are available at https://github.com/nodejs/node-gyp#on-windows

Press any key to continue . . .

Using this script downloads third party software
------------------------------------------------
This script will direct to Chocolatey to install packages. By using
Chocolatey to install a package, you are accepting the license for the
application, executable(s), or other artifacts delivered to your machine as a
result of a Chocolatey install. This acceptance occurs whether you know the
license terms or not. Read and understand the license terms of the packages
being installed and their dependencies prior to installation:
- https://chocolatey.org/packages/chocolatey
- https://chocolatey.org/packages/python
- https://chocolatey.org/packages/visualstudio2019-workload-vctools

This script is provided AS-IS without any warranties of any kind
----------------------------------------------------------------
Chocolatey has implemented security safeguards in their process to help
protect the community from malicious or pirated software, but any use of this
script is at your own risk. Please read the Chocolatey's legal terms of use
as well as how the community repository for Chocolatey.org is maintained.

Press any key to continue . . .
```
3. Additional tools results:
```
Chocolatey upgraded 19/19 packages.
 See the log for details (C:\ProgramData\chocolatey\logs\chocolatey.log).

Upgraded:
 - chocolatey-compatibility.extension v1.0.0
 - chocolatey-core.extension v1.4.0
 - chocolatey-dotnetfx.extension v1.0.1
 - chocolatey-visualstudio.extension v1.11.1
 - chocolatey-windowsupdate.extension v1.0.5
 - dotnetfx v4.8.0.20220524
 - KB2919355 v1.0.20160915
 - KB2919442 v1.0.20160915
 - KB2999226 v1.0.20181019
 - KB3033929 v1.0.5
 - KB3035131 v1.0.3
 - python v3.13.5
 - python3 v3.13.5
 - python313 v3.13.5
 - vcredist140 v14.44.35208
 - vcredist2015 v14.0.24215.20170201
 - visualstudio2019buildtools v16.11.48
 - visualstudio2019-workload-vctools v1.0.1
 - visualstudio-installer v2.0.3
```
3. Verify
```shell
C:\Users\Jim>npm -v
10.9.2
```

- [x] Performant npm package manager (pNPM) ✅ 2025-06-30
1. Enable pNPM via Corepack (installed with Node.js)
```shell
C:\Windows\System32>corepack enable pnpm
```
2. Install by checking the pNPM version 
```shell
C:\Windows\System32>pnpm -v
! Corepack is about to download https://registry.npmjs.org/pnpm/-/pnpm-10.12.4.tgz
? Do you want to continue? [Y/n] Y

10.12.4
```
3. Verify the version.
```shell
C:\Windows\System32>pnpm -v
10.12.4
```
- [x] Verify Git for Window installed ✅ 2025-06-30
```shell
C:\Windows\System32>git -v
git version 2.40.0.windows.1
```

- [x] Install Windows Subsystem for Linux (WSL) ✅ 2025-06-30
1. Verify CPU Virtualization is enabled
![Pasted image 20250630103955.png](<attachments/Pasted image 20250630103955.png>)
2. Enable WSL 2 and its kernel (PowerShell)
```powershell
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Install the latest PowerShell for new features and improvements! https://aka.ms/PSWindows

PS C:\WINDOWS\system32> wsl --install --no-distribution
Downloading: Windows Subsystem for Linux 2.5.9
Installing: Windows Subsystem for Linux 2.5.9
Windows Subsystem for Linux 2.5.9 has been installed.
Installing Windows optional component: VirtualMachinePlatform

Deployment Image Servicing and Management tool
Version: 10.0.26100.1150

Image Version: 10.0.26100.4484

Enabling feature(s)
[==========================100.0%==========================]
The operation completed successfully.
The requested operation is successful. Changes will not be effective until the system is rebooted.
The operation completed successfully.
PS C:\WINDOWS\system32>
```
3. Reboot.
4. Verify installation:
```PowerShell
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Install the latest PowerShell for new features and improvements! https://aka.ms/PSWindows

PS C:\WINDOWS\system32> wsl -v
WSL version: 2.5.9.0
Kernel version: 6.6.87.2-1
WSLg version: 1.0.66
MSRDC version: 1.2.6074
Direct3D version: 1.611.1-81528511
DXCore version: 10.0.26100.1-240331-1435.ge-release
Windows version: 10.0.26100.4484
PS C:\WINDOWS\system32>
```
5. Install Linux distribution
```
PS C:\WINDOWS\system32> wsl --install -d ubuntu
Downloading: Ubuntu
Installing: Ubuntu
Distribution successfully installed. It can be launched via 'wsl.exe -d Ubuntu'
Launching Ubuntu...
Provisioning the new WSL instance Ubuntu
This might take a while...
Create a default Unix user account: jim
New password:
Retype new password:
passwd: password updated successfully
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

jim@Burner:/mnt/c/WINDOWS/system32$
```
6. Verify welcome screen appears:
![Pasted image 20250630105332.png](<attachments/Pasted image 20250630105332.png>)
- [x] Install Docker Desktop. ✅ 2025-06-30
1. Download Docker Desktop from [Docker Desktop: The #1 Containerization Tool for Developers \| Docker](https://www.docker.com/products/docker-desktop/)
2. Run downloaded MSI : Docker Desktop Installer.exe
3. Accept default configuration options, including the use of WSL2:
![Pasted image 20250630105849.png](<attachments/Pasted image 20250630105849.png>)
4. Reboot. 
5. Accept the service agreement.
6. Verify the installation:
```powershell
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Install the latest PowerShell for new features and improvements! https://aka.ms/PSWindows

PS C:\Users\Jim> docker version
Client:
 Version:           28.2.2
 API version:       1.50
 Go version:        go1.24.3
 Git commit:        e6534b4
 Built:             Fri May 30 12:07:16 2025
 OS/Arch:           windows/amd64
 Context:           desktop-linux

Server: Docker Desktop 4.42.1 (196648)
 Engine:
  Version:          28.2.2
  API version:      1.50 (minimum version 1.24)
  Go version:       go1.24.3
  Git commit:       45873be
  Built:            Fri May 30 12:07:26 2025
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.7.27
  GitCommit:        05044ec0a9a75232cad458027ca83437aae3f4da
 runc:
  Version:          1.2.5
  GitCommit:        v1.2.5-0-g59923ef
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
PS C:\Users\Jim> docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
e6590344b1a5: Pull complete
Digest: sha256:940c619fbd418f9b2b1b63e25d8861f9cc1b46e3fc8b018ccfe8b78f19b8cc4f
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

PS C:\Users\Jim>
```
7.  Sign up for a Personal Docker Desktop account.
8. Tune memory in Docker desktop to 12GB of the 64GB on this workstation using a ~/.wslconfig file:
```powershell
[wsl2]
memory=12GB
processors=8
```
9. Shutdown WSL for the limit to take effect:
```powershell
wsl -shutdown
```
10. restart WSL:
```powershell
wsl
```
11.  Restart Docker Engine:
![Pasted image 20250630112230.png](<attachments/Pasted image 20250630112230.png>)

- [ ] MSYS
1. Install and bootstrap MSYS2 to support export-tagtrek.sh script, specifically the variation of `rsync` it uses:
    1. Download **`msys2-x86_64-<date>.exe`** from [https://www.msys2.org](https://www.msys2.org). 
    2.  Install to **`C:\msys64`** (default, no spaces).  
    3. Open **“MSYS2 MSYS”** shell and run:
```shell
pacman -Syuu  # full update (may ask to restart shell)  
pacman -Syuu  # second pass
```
2. Install core packages I need for the export-tagtrek.sh script, specifically Git:
```shell
pacman -S git rsync diffutils
```
3. Put Git Credential Manager (GCM) on PATH
    1. Reuse the Git for Windows Credential Manager.
    2. Git-for-Windows is installed at `C:\Program Files\Git`.
    3. Add its helper directory to MSYS2’s PATH:  
    ```shell
    bash echo export PATH="$PATH:/c/Program Files/Git/mingw64/libexec/git-core" >> ~/.bashrc
     source ~/.bashrc`
```
4. Tell MSYS2 Git to use GCM:
```shell
bash git config --global credential.helper manager-core
```
5. Verify everything:
```shell
which pacman # /usr/bin/pacman pacman --version 
which git # /usr/bin/git git --version 
which rsync # /usr/bin/rsync 
```
6. First credential test.
```shell
bash git ls-remote https://github.com/<user>/TagTrek-gh.git
```
 - First run → GCM prompt → paste PAT.  
 - Second run → silent.