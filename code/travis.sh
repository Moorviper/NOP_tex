# Befehle sind innerhalb des Repo auszufuehren.
/Users/danielkrah/Documents/GITHUB-REPOS'S/NOP

# sicherung der vorhandenen .travis.yml
mv .travis.yml bakup.travis.yml
# falls schon vorhanden wird man gewarnt
travis setup releases
Detected repository as NOPtex/NOP, is this correct? |yes| yes
deploy section already exists in .travis.yml, run with --force to override

# Travis Setup
travis setup releases
# natürlich ist keine .travis.yml da. Die haben wir ja umbenannt.
no .travis.yml found
# also erstellen wir eine leere:
touch .travis.yml
travis setup releases
Username: NOPtex
Password for NOPtex: ****************
File to Upload: _build/nop.pdf
Deploy only from NOPtex/NOP? |yes| yes
Encrypt API key? |yes| yes


############  tavis yml inhalt ###############

deploy:
  provider: releases
  api_key:
    secure: <Hier könnte ihre Werbung stehen !!!>
  file: _build/nop.pdf
  on:
    repo: NOPtex/NOP

################################################################


########## add old stuff ###################


sudo: required
dist: trusty
before_install:
  - sudo apt-get -qq update && sudo apt-get install -y --no-install-recommends <TexLive, Pygments ... >
install:
script:
- mkdir _build
- pdflatex -shell-escape -interaction=nonstopmode -synctex=1 -halt-on-error -output-directory
  _build nop.tex
- pdflatex -shell-escape -interaction=nonstopmode -synctex=1 -halt-on-error -output-directory
  _build nop.tex



########  rest ########


deploy:
  provider: releases
  api_key:
    secure: <Hier könnte ihre Werbung stehen !!!>
    file: _build/nop.pdf
    skip_cleanup: true
    on:
      repo: NOPtex/NOP
      tags: true
      all_branches: true

################### Änderungen Deploy ################

# Benoetigt man nicht / Virtuelle Maschine fliegt dannach ja eh in die Tonne ...
    skip_cleanup: true

# Wann soll deployed werden ?
    tags: true
    all_branches: true



- arara -v  -o _build nop.tex
