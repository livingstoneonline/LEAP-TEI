for D in ./*; do
    if [ -d "$D" ]; then
        cd "$D"
		for f in *; do mv $f ${f:0:15}/; done
        cd ..
    fi
done