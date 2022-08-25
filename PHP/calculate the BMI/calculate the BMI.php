<html>
   <head>
      <title>Task 2</title>
   </head>
   <body>
   <?php
      function BMI($pHeight,$pWeight) 
      {
         return $pWeight/($pHeight*$pHeight);
      }
      
      echo "Your BMI is : ";

      echo BMI(1.7,65);
   ?>
   </body>
</html>