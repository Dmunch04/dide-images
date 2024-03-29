shopt -s globstar
set -e

for dockerfile in **/*/Dockerfile; do
    tagPath=$(dirname "$dockerfile")
    imagePath=$(dirname "$tagPath")
    tag=$(basename "$tagPath")
    image=$(basename "$imagePath")
    imageName="munchii/${image}:${tag}"

    echo
    echo "Pushing $imageName"
    docker push "$imageName"
done
