<html>
   <head>
      <title>Task 1</title>
   </head>
   <body>
      <?php
         $HRA=0;
         $DA=0;
         $basicSal=9000;
         $grossSal=0;

         if($basicSal<=10000)
         {
            $HRA=$basicSal*(20/100);
            $DA=$basicSal*(80/100);
            $grossSal=$basicSal+$HRA+$DA;
            echo "Your Gross Salary is : ".$grossSal;
         }

         elseif($basicSal==10001 or $basicSal<=20000)
         {
            $HRA=$basicSal*(25/100);
            $DA=$basicSal*(90/100);
            $grossSal=$basicSal+$HRA+$DA;
            echo "Your Gross Salary is : ".$grossSal;
         }
         
         elseif($basicSal>=20001)
         {
            $HRA=$basicSal*(30/100);
            $DA=$basicSal*(95/100);
            $grossSal=$basicSal+$HRA+$DA; 
            echo "Your Gross Salary is : ".$grossSal;
         }

         else
         {
            echo "Invalid Value";
         }

         
         ?>
   </body>
</html>