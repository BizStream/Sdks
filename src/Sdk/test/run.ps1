param ($configuration = 'Debug')

if ( Test-Path -Path ".\packages\" ) {
    rm -r -force ".\packages"
}

mkdir ".\packages"

Push-Location "..\src"

dotnet clean -v m
dotnet pack -c $configuration --force

Pop-Location

cp "..\src\bin\$configuration\BizStream.NET.Sdk.*.nupkg" ".\packages\"

dotnet clean -v m

dotnet restore --no-cache --force
dotnet build --no-restore
dotnet pack -c $configuration --no-build 