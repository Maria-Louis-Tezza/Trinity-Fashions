<?php
     include_once 'functions.php';
template_header('reciept');
?>

<?php
$cname = $_POST['customer_name'];
$address = $_POST['address'];

$mail = $_POST['mail'];
$phno = $_POST['phno'];

?>


<div id="invoice-POS">
    
        <center id="top">
          <div class="logo"></div>
          <div class="info"> 
                <h2>TRINITY FASHIONS</h2>
          </div><!--End Info-->
        </center><!--End InvoiceTop-->
        
        <div id="mid">
          <div class="info">
            <h2>Contact Info</h2>
            <p> 
                name    : <?php echo $cname; ?> <br>
                Address : <?php echo $address; ?></br>
                Email   : <?php echo $mail; ?></br>
                Phone   : <?php echo $phno; ?></br>
            </p>
          </div>
        </div><!--End Invoice Mid-->
        
        <div id="bot">
    
                        <div id="table">
                            <table>
                                <tr class="tabletitle">
                                    <td class="item"><h2>Item</h2></td>
                                    <td class="Hours"><h2>Qty</h2></td>
                                    <td class="Rate"><h2>Sub Total</h2></td>
                                </tr>
    
                                <tr class="service">
                                    <td class="tableitem"><p class="itemtext">item-1</p></td>
                                    <td class="tableitem"><p class="itemtext">5</p></td>
                                    <td class="tableitem"><p class="itemtext">rs.375.00</p></td>
                                </tr>
    
                                <tr class="service">
                                    <td class="tableitem"><p class="itemtext">item-2</p></td>
                                    <td class="tableitem"><p class="itemtext">3</p></td>
                                    <td class="tableitem"><p class="itemtext">rs.225.00</p></td>
                                </tr>
    
                                <tr class="service">
                                    <td class="tableitem"><p class="itemtext">item-3</p></td>
                                    <td class="tableitem"><p class="itemtext">5</p></td>
                                    <td class="tableitem"><p class="itemtext">rs.375.00</p></td>
                                </tr>
    
                                <tr class="service">
                                    <td class="tableitem"><p class="itemtext">item-4</p></td>
                                    <td class="tableitem"><p class="itemtext">20</p></td>
                                    <td class="tableitem"><p class="itemtext">rs.1500.00</p></td>
                                </tr>
    
                                <tr class="service">
                                    <td class="tableitem"><p class="itemtext">item-5</p></td>
                                    <td class="tableitem"><p class="itemtext">10</p></td>
                                    <td class="tableitem"><p class="itemtext">rs.750.00</p></td>
                                </tr>
    
                                <tr class="tabletitle">
                                    <td></td>
                                    <td class="Rate Rate1"><h2>tax</h2></td>
                                    <td class="payment"><h2>Rs.419.25</h2></td>
                                </tr>
    
                                <tr class="tabletitle">
                                    <td></td>
                                    <td class="Rate Rate1"><h2>Total</h2></td>
                                    <td class="payment"><h2> Rs.3644</h2></td>
                                </tr>
    
                            </table>
                        </div><!--End Table-->
    
                        <div id="legalcopy">
                            <p class="legal"><strong>Thank you for your business!</strong>  Payment is expected within 31 days; please process this invoice within that time. There will be a 5% interest charge per month on late invoices. 
                            </p>
                        </div>
    
                    </div><!--End InvoiceBot-->
      </div><!--End Invoice-->

      <?=template_footer()?>
    
