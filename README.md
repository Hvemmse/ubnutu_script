# ubuntu_script
en Samling af mine scripts.


Tilføjet ./radiodk for at bruge en mini insternet player i ubuntu terminal.

Tilføjer ./info.sh
Nyt script som viser info.sh så som hostname, user der er logget in lan ip og wan ip oversigt over diske  og memory free. 
det kræver curl installeret, hvis man ikke har den, installeres via sudo apt install curl

kan bruges som din bash.rc tilføj linien, include /hentede/info.sh i bash.rc filen. Det kan gøres via 
<code>echo "~/Hentede/info.sh" >> ~/.bash.rc</code> i en terminal efter du har hentet filen via git.

Hent filen med denne kommando <code> git clone https://github.com/Hvemmse/ubuntu_script</code>
