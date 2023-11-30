

<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
  </head>
    <style>
      body {
        text-align: center;
        
        background: rgb(238,174,202);
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%); 
      }
        h1 {
          color: #99dc33;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }

      .detail{
        position: relative;
        left:35%;
      }

      .custform{
        margin-top:20px;
        margin-left:30%;
        padding: 40px;
        border:solid black 2px;
        width: 800px;
      }

      .custform button{
        width: 200px;
        height:30px;
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 90%); 
      }

      table tr,td{
        position: relative;
        left:-100px;
      }
      
    </style>
    <body>

    <?=template_header('Place Order')?>
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">✓</i>
      </div>
        <h1>Success</h1> 
        <p>We received your purchase request;<br/> we'll be in touch shortly!</p>
      </div>

     

      <div class="custform">
        <h1>CUSTOMER DETAILS</h1>
        <h6><b>Note:</b> the data entered in the form will be applied on the payment reciept</h6>
        <form action="reciept.php" method="post" class="detail">
        <table cellspacing="10">
              <tr >
                <td><p>ENTER CUSTOMER NAME </p></td>
                <td>:</td>
                <td><input type="text" name="customer_name" required></td>
                
              </tr>

              <tr>
                <td><p>ENTER CUSTOMER ADDRESS </p></td>
                <td>:</td>
                <td><input type="text" name="address" required></td>
              </tr>

              <tr>
                <td><p>ENTER CUSTOMER MAIL </p></td>
                <td>:</td>
                <td><input type="email" name="mail" required></td>
              </tr>

              <tr>
                <td><p>ENTER CUSTOMER PHONE NUMBER </p></td>
                <td>:</td>
                <td><input type="tel" maxlenght="10" name="phno" required></td>
              </tr>
              
              <tr>
                  <td><button type="submit">SUBMIT</button></td>
                  <td></td>
                  <td><button type="reset">RESET</button></td>
              </tr>

        </table>
        </form>

      </div>

      <?=template_footer()?>

    </body>
</html>

