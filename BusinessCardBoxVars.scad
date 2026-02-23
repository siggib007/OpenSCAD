$fn=128;
Wall=3;
/* Business Card Box
InnerW_X=87;
InnerD_Y=57;
InnerH_Z=65;
*/

/* Small Box */
InnerW_X=43;
InnerD_Y=28;
InnerH_Z=32;


DW=Wall*2;
HightZ=InnerH_Z+DW;
LengthX=InnerW_X+DW;
WidthY=InnerD_Y+DW;

TW=Wall*3;
HW=Wall/2;
HingePinDia=2;
NumHinge=8;
HL=LengthX/2;
Buff=1;
DB=Buff*2;

FrontHingeLatch = 2;
FrontHingeW = FrontHingeLatch*3;
HFH = FrontHingeW/2;
HFHL = FrontHingeLatch/2;
LatchH=HingePinDia*2;

LockDia = 3;
DLD = LockDia+4;
PenUHinge = NumHinge-1;
AntPenUHinge = NumHinge-2;