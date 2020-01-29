#include "memorygame.h"
#include "assign.h"

int d0 = D0;
int d1 = D1;
int d2 = D2;
int d3 = D3;
int leds = LED;
int btn = BUTTONS;
int lfsr = LFSR;
int t = TRAP;

void init(int* disp0,int* disp1,int* disp2, int* disp3){
    assign(TODISP5, disp3);
    assign(TODISPNILL, disp2);
    assign(TODISPNILL, disp1);
    assign(TODISPNILL, disp0);

    return;
}

int main (){
    int* disp0 = (int*)d0;
    int* disp1 = (int*)d1;
    int* disp2 = (int*)d2;
    int* disp3 = (int*)d3;
    int* t = (int*)t;
    int* b = (int*)btn;
    int* l = (int*)leds;
    int* lr = (int*)lfsr;
    int a[8] = {1,8,4,2,4,2,1,8};
    int numDisplay[10] = {TODISP0, TODISP1, TODISP2, TODISP3, TODISP4,\
                          TODISP5, TODISP6, TODISP7, TODISP8, TODISP9};
    int key[8] = {0,0,0,0,0,0,0,0};
    int state = 0;
    int i,j = 0;
    int level = 1;
    int hits = 0;
    int totalHits = 0;
    int index = 0;
    int button = 0;
    int speed = 3000000;
    while (1){
        switch (state) {
            case 0:
                init(disp0, disp1, disp2, disp3);
                //Generate random sequence
                for(i = 0;i<8;i++){
                    key[i] = a[*lr];
                }
                while(*b != 9);
                assign(TODISP0, disp3);
                assign(TODISP0, disp2);
                state = 1;
                break;
            case 1:
                assign(TODISPNILL, disp1);
                assign(numDisplay[level], disp0);
                for(i=0;i<(level + 3);i++){
                    assign(0,l);
                    for(j=0;j<speed;j++);
                    assign(key[i],l);
                    for(j=0;j<speed;j++);
                }
                assign(0,l);
                state = 2;
                break;
            case 2:
                hits = 0;
                while(hits < (level + 3)){
                    while(button == 0){
                        button = *b;
                    }
                    for(j=0;j<1000000;j++);
                    if(button != 1 && button != 2 && button != 4 && button != 8) {
                        continue;
                    }
                    if(button != key[hits]) {
                        assign(TODISPNILL,disp0);
                        assign(TODISPNILL,disp3);
                        assign(TODISP0,disp1);
                        assign(TODISP6,disp2);
                        for(j=0;j<10000000;j++);
                        level = 1;
                        speed = 3000000;
                        totalHits = 0;
                        button = 0;
                        state = 0;
                        break;
                    }
                    hits++;
                    totalHits++;
                    button = 0;
                    if(totalHits < 10){
                        assign(TODISP0, disp3);
                        assign(numDisplay[totalHits], disp2);    
                    }
                    else if(totalHits >= 10 && totalHits < 20){
                        assign(TODISP1, disp3);
                        index = totalHits - 10;
                        assign(numDisplay[index], disp2);  
                    }
                    else if(totalHits >= 20 && totalHits < 30){
                        assign(TODISP2, disp3);
                        index = totalHits - 20;
                        assign(numDisplay[index], disp2);  
                    }
                    else if(totalHits >= 30){
                        assign(TODISP3, disp3);
                        index = totalHits - 30;
                        assign(numDisplay[index], disp2);
                        for(j=0;j<10000000;j++); 
                        assign(TODISPE,disp1);
                        assign(TODISP6,disp0);
                        for(j=0;j<10000000;j++);
                        level = 1;
                        speed = 3000000;
                        totalHits = 0;
                        button = 0;
                        state = 0;
                        break;
                    }
                }
                if(hits == (level + 3)){
                    level++;
                    speed -= 500000;
                    state = 1;
                    break;
                }
            default:
                break;
        }
    }
    return 0;
}
