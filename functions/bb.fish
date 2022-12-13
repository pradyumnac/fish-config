function bb
  # Buku browse
  set -l url (buku -p -f4 | fzf -m --reverse --preview "buku -p {1}" --preview-window=wrap | cut -f2)

  if [ ! -z "$url" ]
      echo "Opening url: $url"
      echo "$url" | xargs xdg-open
  end

end
