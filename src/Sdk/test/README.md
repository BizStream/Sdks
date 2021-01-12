# `BizStream.NET.Sdk` Test

## Running Locally

- Execute `run.ps1` in a PowerShell 7 shell

## Troubleshooting

My changes to `BizStream.NET.Sdk` `.props`/`.targets` files aren't taking affect when packing the test project

> Due to the nature of NuGet, and given the `NuGet.config` specifying the build output directory as a source, the `BizStream.NET.Sdk` package is cached in the `global-packages` folder. Clear the cache using `dotnet nuget locals global-packages --clear`, or use `dotnet nuget locals global-packages --list` to determine the folder's location, and manually delete the `bizstream.net.sdk` folder. This will force the build output to be used upon the next usage of `run.ps1`.

TODO: update `run.ps1` to delete the cached folder from `global-packages` for us.
