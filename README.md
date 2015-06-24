This book has the goal of proving the efficiency and simplicity of Roassal concerning modelisations for data mining. It exposes most commons techniques of modelisation for data mining, each of them performed using Roassal and explained.
Highly inspired from "R and Data Mining: Examples and Case Studies" (http://cran.r-project.org/doc/contrib/Zhao_R_and_data_mining.pdf), Y. Zhao, as reference.

To contribute and see the code: /!\ temporary /!\
   ./download.sh
   
   - Change manually Pharo.image and Pharo.changes by moose image and changes, keeping the same name (Pharo.changes, Pharo.image).
   - Add also PharoV40.sources.}

   ./loadAndFixPillar.sh
   ./compile.sh
   
###################IN DEV####################################

   To download the missing pillar file and Pharo vm and images:
    ./download.sh 
    Unfortunatly, right now at compilation the pdf won't be generated.

    The fix is to load the version '0.15' of ConfigurationOfPillar:
    ./fixForPdf.sh /!\ For now does not work due to choose option load in command handler /!\
    
    Load moose image:
    ./mooseDownload.sh /!\ For now does not work due to the image downloaded can't be used properly /!\

    Load pillar and fix moose image:
    ./loadAndFixPillar.sh
    
    Compile html, latex and pdf:
    ./compile.sh