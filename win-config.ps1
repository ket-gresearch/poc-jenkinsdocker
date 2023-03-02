# Install the Hyper-V role
Install-WindowsFeature -Name Hyper-V -IncludeManagementTools

# Enable Containers feature
Enable-WindowsOptionalFeature -Online -FeatureName containers -All

# Restart the system to apply changes
Restart-Computer -Force

# Download the Docker installer
Invoke-WebRequest "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe" -OutFile "DockerInstaller.exe"

# Install Docker
Start-Process -FilePath ".\DockerInstaller.exe" -ArgumentList "install --quiet" -Wait

# Verify that Docker is installed
docker version

# Switch Docker to use Windows containers
& $Env:ProgramFiles\Docker\Docker\DockerCli.exe -SwitchDaemon
Restart-Service docker
docker version

# Restart the system to apply changes
Restart-Computer -Force

# Install the Hyper-V role
Install-WindowsFeature -Name Hyper-V -IncludeManagementTools

# Enable Containers feature
Enable-WindowsOptionalFeature -Online -FeatureName containers -All

# Restart the system to apply changes
Restart-Computer -Force

# Download the Docker installer
Invoke-WebRequest "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe" -OutFile "DockerInstaller.exe"

# Install Docker
Start-Process -FilePath ".\DockerInstaller.exe" -ArgumentList "install --quiet" -Wait

# Verify that Docker is installed
docker version

# Restart the system to apply changes
Restart-Computer -Force
