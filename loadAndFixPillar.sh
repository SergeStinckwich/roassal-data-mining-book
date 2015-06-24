get_pillar(){
    ./pharo Pharo.image eval --save "
    Gofer new 
        smalltalkhubUser: 'Pier' project: 'Pillar';
        configuration;
        loadVersion: '0.15'"
}

echo load pillar
get_pillar
