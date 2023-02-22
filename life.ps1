
$res = 24;

$board = New-Object 'object[,]' $res,$res;
$boardReader =  gc -path board.txt -Raw;

for ($i=0; $i -lt $res; $i++)
{
    for ( $j=0; $j -lt $res; $j++)
    {
    $readPointer= $i*$res +$j;
    $board[$i,$j]= $boardReader[$readPointer];
    }
}


for ($i=0; $i -lt $res; $i++)
{
        for ( $j=0; $j -lt $res; $j++)
        {
   write-host $board[$i,$j] ' ' -NoNewline;
   }
   write-host "";
   }

  
