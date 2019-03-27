#include "SimState.h"

SimState::SimState()
{
    scene3Setup();
}

void SimState::removeOldScene(){
    addRoof = false;
    addTable = false;

    std::cout << "Delete Springs" << std::endl;
    springs.clear();
    std::cout << "Delete masses" << std::endl;
    masses.clear();
}

void SimState::scene1Setup(){
    removeOldScene();
    numMasses = 2;
    simsPerFrame = 16;

    deltT = 0.001;
    k = 200;
    b = 10;
    l = 10;

    createMasses();
    create1DSprings();

    addRoof = true;

    float strech = 2.2f;
    masses[0].location = vec3(0.0f, planeHight, 0.0f);
    masses[0].dynamic = false;
    masses[1].location = vec3(0.0f, planeHight-(strech*l), 0.0f);
}

void SimState::scene2Setup(){
    std::cout << "Clearing old" << std::endl;
    removeOldScene();

    std::cout << "Setting variables" << std::endl;
    numMasses = 10;
    simsPerFrame = 512;

    deltT = 0.00005;
    k = 800;
    b = 4;
    l = 2;

    std::cout << "Creating objects" << std::endl;
    createMasses();
    create1DSprings();

    addRoof = true;

    std::cout << "Moving masses" << std::endl;
    masses[0].location = vec3(0.0f, planeHight, 0.0f);
    masses[0].dynamic = false;
    for( float i = 1; i < masses.size() ; i++){
        masses[i].location = vec3(l*i, planeHight, 0.0f);
    }
}

void SimState::scene3Setup(){
    removeOldScene();


    int width = 10;
    int hight = 10;
    int length = 10;

    bool useCube = true;
    if (useCube){
        int cubeSize = 5;
        width = cubeSize;
        hight = cubeSize;
        length = cubeSize;
    }

    float spaceing = 10;

    numMasses = width*hight*length;
    simsPerFrame = 128;

    deltT = 0.000005;
    k = 100;
    b = 10;
    l = 10;

    createMasses();
    create3DSprings(width, length);

    for(int i = 0 ; i < masses.size() ; i++){
        float x = (-width*l/2)+((i%width)*spaceing);
        float z = (-length*l/2)+(    ((int)floor((float)i/width)%length)    *spaceing);
        float y = planeHight -  (    floor((float)i/(width*length))    *spaceing);
        masses[i].location = vec3(x, y, z);
    }
}


void SimState::scene4Setup(){
    removeOldScene();

    int width = 10;
    int hight = 10;

    float spaceing = 6;

    numMasses = width*hight;
    simsPerFrame = 512;

    deltT = 0.00005;
    k = 800;
    b = 10;
    l = 5;

    createMasses();
    create2DSprings(width);

    for(int i = 0 ; i < masses.size() ; i++){
        float x = (-width*l/2)+((i%width)*spaceing);
        float y = planeHight - (floor((float)i/width)*spaceing);
        float z = 0.0f;
        masses[i].location = vec3(x, y, z);

        if(i < width)
            masses[i].dynamic = false;
    }
}






void SimState::createMasses(){
    //Create masses
    for(int i = 0 ; i < numMasses ; i++){
        Mass newMass = Mass();
        masses.push_back(newMass);
        //std::cout << "Mass created" << std::endl;
    }
}

void SimState::create1DSprings(){
    //Create springs
    for(int i = 0 ; i < (numMasses-1) ; i++){
        Spring newSpring = Spring(i, i+1);
        springs.push_back(newSpring);
        //std::cout << "Spring created" << std::endl;
    }
}

void SimState::create2DSprings(int width){
    Spring newSpring = Spring(0,0);

    //Create springs
    for(int i = 0 ; i < (numMasses-1) ; i++){
        if(i <= (numMasses-1-width)){         //If not bottom row
            newSpring = Spring(i, i+width);      //Down
            springs.push_back(newSpring);

            if(i%width != (width-1)){            //If not right edge
                newSpring = Spring(i, i+1);          //Right
                springs.push_back(newSpring);
                newSpring = Spring(i, i+1+width);    //Down-Right
                springs.push_back(newSpring);
            }

            if(i%width != 0){  //If not left edge
                newSpring = Spring(i, i-1+width);      //Attach Down-Left
                springs.push_back(newSpring);
            }
        }
        else{    //Else it is the bottom row
            newSpring = Spring(i, i+1);          //Right
            springs.push_back(newSpring);
        }
    }
}

void SimState::create3DSprings(int width, int length){
    Spring newSpring = Spring(0,0);

    //Create springs
    for(int i = 0 ; i < (numMasses-1) ; i++){

        //Link sheets (XZ)
        if(((int)floor(i/width) % length) != (length-1)){    //If not end of sheet
            if(i <= (numMasses-1-width)){                   //If not bottom row
                newSpring = Spring(i, i+width);      //Down
                springs.push_back(newSpring);

                if(i%width != (width-1)){            //If not right edge
                    newSpring = Spring(i, i+1);          //Right
                    springs.push_back(newSpring);
                    newSpring = Spring(i, i+1+width);    //Down-Right
                    springs.push_back(newSpring);
                }

                if(i%width != 0){  //If not left edge
                    newSpring = Spring(i, i-1+width);      //Attach Down-Left
                    springs.push_back(newSpring);
                }
            }
            else{    //Else it is the bottom row
                newSpring = Spring(i, i+1);          //Right
                springs.push_back(newSpring);
            }

        }

        else{
            if(i % (width*length) != (width*length)-1){
                newSpring = Spring(i, i+1);             //Down
                springs.push_back(newSpring);
            }
        }



        //Link strips (YZ)
        if(i+(width*length) <= (numMasses-1)){             //If not bottom sheet
            newSpring = Spring(i, i+(width*length));             //Down
            springs.push_back(newSpring);


            if(((int)floor(i/width) % length) != (length-1)){          //If not end of sheet
                newSpring = Spring(i, i+width+(width*length));
                springs.push_back(newSpring);
            }
            //}

            if(((int)floor(i/width) % length) != 0){                   //If not start of sheet
                newSpring = Spring(i, i-width+(width*length));
                springs.push_back(newSpring);
            }
        }

        //Link Across (XY)
        if(i+(width*length) <= (numMasses-1)){             //If not bottom XZ
            if(i % width != (width-1)){                    //If not right YZ
                newSpring = Spring(i, i+1+(width*length));
                springs.push_back(newSpring);

                if(i%(width*length) < (width*length-width)){ //If not front XY
                    newSpring = Spring(i, i+1+width+(width*length));
                    springs.push_back(newSpring);
                }

                if(i%(width*length) > (width-1)){               //If not back XY
                    newSpring = Spring(i, i+1-width+(width*length));
                    springs.push_back(newSpring);
                }
            }
            if(i % width != 0){                              //If not left YZ
                if(i%(width*length) < (width*length-width)){ //If not front XY
                    newSpring = Spring(i, i-1+width+(width*length));
                    springs.push_back(newSpring);
                }

                if(i%(width*length) > (width-1)){               //If not back XY
                    newSpring = Spring(i, i-1-width+(width*length));
                    springs.push_back(newSpring);
                }
            }

            if(i % width != 0){                            //If not back XY
                newSpring = Spring(i, i-1+(width*length));
                springs.push_back(newSpring);
            }
        }
    }   //Do not pass here


}
