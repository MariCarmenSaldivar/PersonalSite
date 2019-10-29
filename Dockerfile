FROM mcr.microsoft.com/dotnet/core/sdk:3.0-alpine as publish
WORKDIR /publish
COPY PersonalSite.csproj .
RUN dotnet restore 
COPY . ./
RUN dotnet publish --output ./out

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0-alpine as runtime
LABEL author="MaricarmenSaldivar"
EXPOSE 5000
WORKDIR /PersonalSite
COPY --from=publish /publish/out .
ENTRYPOINT ["dotnet", "PersonalSite.dll"]

