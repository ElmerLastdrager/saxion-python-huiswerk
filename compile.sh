#pandoc README.md -o 1-uitleg.pdf
#pandoc opgaven.md -o 2-opgaven.pdf
#pandoc uitwerkingen.md -o 3-antwoorden.pdf

pandoc README.md -o index.html --standalone --metadata pagetitle="Uitleg"
pandoc opgaven.md -o opgaven.html --standalone --metadata pagetitle="Opgaven"
pandoc uitwerkingen.md -o uitwerkingen.html --standalone --metadata pagetitle="Uitwerkingen"
