path=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer;C:\Windows\System32;

REM call %comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat"
REM C:\>dir/s/a tf.exe
REM tf get C:\TOPS /overwrite
rd C:\TPOSApi\BSC /Q /S
rd C:\TPOSApi\COM /Q /S
rd C:\TPOSApi\FIN /Q /S
rd C:\TPOSApi\HSR /Q /S
rd C:\TPOSApi\ORD /Q /S
rd C:\TPOSApi\SYS /Q /S
rd C:\TPOSApi\VSA /Q /S

rd C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.BSC\obj /Q /S
rd C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.COM\obj /Q /S
rd C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.FIN\obj /Q /S
rd C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.HSR\obj /Q /S
rd C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.ORD\obj /Q /S
rd C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.SYS\obj /Q /S
rd C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.VSA\obj /Q /S

msbuild C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.BSC\ServiceAPI.BSC.csproj  /p:DeployOnBuild=true /p:PublishProfile=CustomProfile
msbuild C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.COM\ServiceAPI.COM.csproj  /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.FIN\ServiceAPI.FIN.csproj  /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.HSR\ServiceAPI.HSR.csproj  /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.ORD\ServiceAPI.ORD.csproj  /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.SYS\ServiceAPI.SYS.csproj  /p:DeployOnBuild=true /p:PublishProfile=FolderProfile
msbuild C:\tfs\TOPS\Codes\ServiceAPIs\ServiceAPI.VSA\ServiceAPI.VSA.csproj  /p:DeployOnBuild=true /p:PublishProfile=CustomProfile
           
rd C:\test\TOPS\Codes\Webs\Web.Backend /Q /S
rd C:\tfs\TOPS\Codes\Webs\Web.Backend\obj /Q /S
msbuild C:\tfs\TOPS\Codes\Webs\Web.Backend.sln /p:DeployOnBuild=true /p:PublishProfile=FolderProfile1

pause