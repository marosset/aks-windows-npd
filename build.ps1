param(
    [switch] $push,
    $image = "ghcr.io/marosset/aks-windows-npd",
    $version = "ci"
)

$fullImage = "${image}:${version}"

$npdVersion = "v0.8.10"
New-Item -ItemType Directory -Path build -Force
curl.exe -L "https://github.com/kubernetes/node-problem-detector/releases/download/${npdVersion}/node-problem-detector-${npdVersion}-windows_amd64.tar.gz" -o build/npd-windows_amd64.tar.gz
tar.exe -xvf build/npd-windows_amd64.tar.gz -C build

docker.exe build -f Dockerfile.windows -t $fullImage .

if ($push) {
    docker.exe image push $fullImage
}