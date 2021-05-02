#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["Hash5/Hash5.csproj", "Hash5/"]
RUN dotnet restore "Hash5/Hash5.csproj"
COPY . .
WORKDIR "/src/Hash5"
RUN dotnet build "Hash5.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Hash5.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Hash5.dll"]