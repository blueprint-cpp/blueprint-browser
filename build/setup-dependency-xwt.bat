@echo off

pushd %~dp0

if not exist "dependencies" (mkdir "dependencies")
cd dependencies

set xwt_url="https://github.com/mono/xwt.git"
set xwt_dir="xwt"

if not exist %xwt_dir% (
    git clone %xwt_url%

    call "%VS140COMNTOOLS%\vsvars32.bat"

    cd xwt
    msbuild Xwt.WPF\Xwt.WPF.csproj /target:Build /property:Configuration=Release;Platform=AnyCPU /verbosity:quiet
    cd ..
)

popd
