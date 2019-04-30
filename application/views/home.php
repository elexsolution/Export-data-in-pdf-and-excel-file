<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html lang="en">
<head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>Home:Elexsolution.com</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body>
<!------Header End------------->
<div class="container-fluid">
            <div class="row justify-content-center align-items-center">
          
          
            <h1>Store data records</h1>
            </div>
            <br>
            <br>
            <div class="row">
            <div class="col-lg-12 mx-auto">
          <?php 
          $attrib = array('class'=>'form-inline justify-content-center');
          
          echo form_open('Welcome/udata',$attrib); ?> 
   <div class="form-group">        
  <label for="Date">From:</label>
  <input type="text" class="form-control date" name="fdate">
  </div>
  <div class="form-group"> 
  <label for="Date">To:</label>
  <input type="text" class="form-control date"  name="tdate">
  </div>
  <button type="submit" class="btn btn-primary"> Submit</button>
  <?php echo form_close();?>
  <br>
  <br>
  <?php if(in_array(!0,$data12)){
    $atts = array('target' => '_blank');
      $pdf = anchor(base_url().'Welcome/pdf/','<button type="submit" class="btn btn-primary"> <i class="fas fa-file-pdf fa-2x" aria-hidden="true"></i> Download</button>',$atts) ;
    $excel = anchor(base_url().'Welcome/excel/','<button type="submit" class="btn btn-warning" > <i class="far fa-file-excel fa-2x" aria-hidden="true"></i> Download</button>',$atts) ;
    ?>
 <div class="row mx-auto">
  <div class="col-lg-6"><?php echo $pdf;?></div>
  <div class="col-lg-6"><?php echo $excel;?></div>
  
  </div>
  <br>
 
  <table class="table table-striped table-responsive">
    
    <thead class="thead-dark">
    <th>Name</th>
    <th>Company</th>
    <th>Date</th>
    <th>Sample</th>
    <th>Quantity</th>
    </thead>
    <tbody>
    <?php    
      foreach($data12 as $row):?>
      <tr>
        <td><?php echo $row->Name;?></td>
        <td><?php echo $row->Company;?></td>
        <td><?php echo $row->Date;?></td>
        <td><?php echo $row->Sample;?></td>
        <td><?php echo $row->Quantity;?></td>
      </tr>
<?php endforeach; ?>
  </tbody>
  </table>
  <?php } ?>

  </div>
  </div>
  </div>



            <!---------Footer---------------->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>           
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
<script>
$('.date').datepicker({
            format: 'yyyy-mm-dd',
            autoclose:true });
</script>            
</body>
</html>

