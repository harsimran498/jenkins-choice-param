while IFS= read -r line || [[ -n "$line" ]]; do
    echo "$line"
done < "envlist.txt"
