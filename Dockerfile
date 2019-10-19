FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

WORKDIR /PersonalSite
COPY bin/Debug/netcoreapp3.0/publish . 
ENTRYPOINT ["dotnet", "/PersonalSite/PersonalSite.dll"]
