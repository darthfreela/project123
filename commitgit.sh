 #!/bin/bash
echo "Comentário para o commit: " ; read variavel
git add .
git commit -m "$variavel"
git pull
git push 
