$scanner="C:\dev\sonar\sonar-scanner-msbuild\build\sonarscanner-net-framework\SonarScanner.MSBuild.exe"
$server="http://localhost:9000/"

$token="<IDENTITY THEFT IS NOT A JOKE JIM>"

& $scanner begin `
	/o:"greggy42" `
	/k:"dummy42" `
	/d:sonar.cfamily.compile-commands="some_directory/compile_commands.json" `
	/d:sonar.host.url="$server" `
	/d:sonar.token="$token" `
	/d:sonar.verbose=true

# Download Build Wrapper for Windows from: <Your SonarQube URL>/static/cpp/build-wrapper-win-x86.zip
./build-wrapper-win-x86-64.exe --out-dir some_directory MSBuild.exe /t:Rebuild /nodeReuse:False

& $scanner end /d:sonar.token="$token"
