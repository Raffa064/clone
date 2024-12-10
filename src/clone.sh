function clone/main() {
 url="$1"; shift

  if [[ "$url" =~ ^[A-Za-z0-9_-]+/[A-Za-z0-9_-]+$ ]]; then
    url="https://github.com/$url"
  fi
  
  git clone "$url" $@ 
}
