 #!/bin/bash
git add .
echo "Comentário para o commit: " ; read variavel

git commit -m "$variavel"

git push
