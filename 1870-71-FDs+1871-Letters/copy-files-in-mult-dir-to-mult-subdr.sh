for D in ./*; do
    if [ -d "$D" ]; then
        cd "$D"
		for dir in *; do [ -d "$dir" ] && cp * "$dir" ; done
        cd ..
    fi
done