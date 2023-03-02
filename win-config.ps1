# Install the Hyper-V role
Install-WindowsFeature -Name Hyper-V -IncludeManagementTools

# Enable Containers feature
Enable-WindowsOptionalFeature -Online -FeatureName containers -All

# Download the Docker installer
Invoke-WebRequest "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe" -OutFile "DockerInstaller.exe"

# Install Docker
Start-Process -FilePath ".\DockerInstaller.exe" -ArgumentList "install --quiet" -Wait

# Verify that Docker is installed
docker version
