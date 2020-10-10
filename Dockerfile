# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.140.1/containers/dotnetcore/.devcontainer/base.Dockerfile

# [Choice] .NET Core version: 3.1, 2.1
ARG VARIANT="3.1"
FROM mcr.microsoft.com/vscode/devcontainers/dotnetcore:0-${VARIANT}

# By default, devcontainer copy all in /workspaces/DotNetCoreKoans
# https://code.visualstudio.com/docs/remote/containers-advanced#_changing-the-default-source-code-mount
WORKDIR /workspaces/DotNetCoreKoans
COPY . .

RUN dotnet restore

ENTRYPOINT [ "dotnet", "run" ]