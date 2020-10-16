for f in *.ipynb; do jupyter nbconvert --to html_toc $f --output-dir rendered/; done
