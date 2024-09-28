innerdia=55;
outerdia=50;
echo(outerdia > innerdia + 1 ? outerdia : innerdia +2);
SafeDia = outerdia > innerdia + 1 ? outerdia : innerdia +2;
echo(SafeDia);

TotalDia=50;
CanDia=52; // Narrow EU cans 52. Wide US cans 54.

echo(TotalDia > CanDia + 1 ? TotalDia : CanDia +2);
OuterDia = TotalDia > CanDia + 1 ? TotalDia : CanDia +2;
echo(OuterDia);
