
function guess_files {
    echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
    read guess
}

file_count=$(ls -1 | wc -l)

while true; do
    guess_files
    if [[ $guess -eq $file_count ]]; then
        echo "Félicitations Vous avez deviné correctement."
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Trop bas, essayez encore."
    else
        echo "Trop haut, essayez encore."
    fi
done
