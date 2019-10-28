FROM microsoft/aspnetcore
LABEL author="MaricarmenSaldivar"
ARG source=.
EXPOSE 5000
WORKDIR /PersonalSite
COPY $source . 
ENTRYPOINT ["dotnet", "PersonalSite.dll"]
