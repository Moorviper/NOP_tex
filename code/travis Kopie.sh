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
    secure: GV7nYRgki7XrREskSJNNN+CcY6sgOikb0OXhvm4C7UNhr8geYzF3Kg0DGiedE6+xVb+l205n59/ua4Qmnk8I2IsU5jEX6nJ2rT9iX6gYt6j6rQY1kNuYrLM69XXVhRuFJy+RuoHsQCMlE/negO/D26fPLKlXK9V/btva8hbjX3VJ7me4874cUWapGLKfXchpD1a6o1VSIMOjrCJGP7xAgguvkWrpabl74tPRq6pMnAWb5YUx7WBwTPJ0AVeXp6t8AlKeSYzUXgFTi3GTMchseKLcMHNUYqHvylDrAhky7r0Fiy3qO5jKnvT+wn+6A2VNVpFgu10PUZfrOn276RBafRdmnbt+ym5S2sIAyqUO/YRvrNsmMYvX+IhJKHhg8sckShgwjJnxT6TXGSxHGOU+7WwXZ5hhrK236kyRQFyTKN9gBBb/dnW8930vRsguzxXei2ppitO1oLtkujc42Q2yRyZgVdMne+Jwx1Ly7Umey1mOnae+X6PTjYlA7CLGNoxF2JdHwPHKOqyJrLCwLs6CLdxp9aKYxe9w7+ymsR+QdW0mCMiILikq6MHhKvWsJRXoZpklP2m2ospGHXx7d098/9pmRCvkcGp5Ui91QEPI7Eh+N3mtlzkKwe9F+4ko+yghnaM0kiXYOVoQTFWlG5tbki4eLHTuEzr2+TK+Eg5XRzw=
  file: _build/nop.pdf
  on:
    repo: NOPtex/NOP

################################################################
