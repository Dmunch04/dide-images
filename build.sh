shopt -s globstar
set -e

for dockerfile in **/*/Dockerfile; do
    tagPath=$(dirname "$dockerfile")
    imagePath=$(dirname "$tagPath")
    tag=$(basename "$tagPath")
    image=$(basename "$imagePath")
    imageName="munchii/dide-${image}:${tag}"

    (
        cd "$tagPath"
        docker build --no-cache --network host -t "$imageName" . || true
    )
done
