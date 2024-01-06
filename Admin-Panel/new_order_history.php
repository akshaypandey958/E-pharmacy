<?php
require '../connect.php'; 
session_start();
if(!isset($_SESSION['id']))
{
header("location:../E-Pharmacy/sign_in.php");
}
?>
<!DOCTYPE HTML>
<html>
    <head>
        <title>E Pharmacy</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

        <!-- Custom CSS -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />

        <!-- font-awesome icons CSS -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons CSS -->

        <!-- side nav css file -->
        <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
        <!-- side nav css file -->

        <!-- js-->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <script type="text/javascript" src="//cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
        <link href="//cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet">
        <script>
            $(document).ready(function () {
                $('#table2').DataTable();
            });
        </script>

        <!--webfonts-->
        <link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
        <!--//webfonts--> 

        <!-- Metis Menu -->
        <script src="js/metisMenu.min.js"></script>
        <script src="js/custom.js"></script>
        <link href="css/custom.css" rel="stylesheet">
        <!--//Metis Menu -->

    </head> 
    <body class="cbp-spmenu-push">
        <div class="main-content">

            <!--left-fixed -navigation-->
            <?php
            include './admin-page-part/side-bar.php'
            ?>

            <!-- header-starts -->
            <?php
            include './admin-page-part/header.php'
            ?>
            <!-- //header-ends -->
            <!-- main content start-->     <!--left-fixed -navigation-->
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="tables">
                        <h2 class="title1">Order</h2>
                        <div class="panel-body widget-shadow">
                            <h4>Pending Order Request</h4>
                            <table id="table2" class="table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Supplier Name</th>
                                        <th>Request Date</th>
                                        <th>Response</th>
                                        <th>Status</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                     $query = mysqli_query($connect,"SELECT * FROM order_mst WHERE by_id = 6 and type='Req' OR type='Rej'");
                                     while($row = mysqli_fetch_assoc($query))
                                     {
                                         $oid=$row['ord_id'] ;
                                         $q2 = mysqli_query($connect,"SELECT * FROM user_mst WHERE user_id = '{$row['to_id']}'");
                                         while($result = mysqli_fetch_assoc($q2))
                                         {
                                    ?>
                                    <tr>
                                        <td><?php echo $oid ; ?></td>
                                        <td><?php echo $result['s_name'];?></td>
                                        <td><?php echo $row['order_date_time']; ?></td>
                                        <?php
                                         $q2 = mysqli_query($connect,"SELECT * FROM order_description WHERE order_id = '{$oid}'");
                                         while($result1 = mysqli_fetch_assoc($q2))
                                         {
                                         $price=$result1['price'];
                                                 if($price==0)
                                                 { ?>
                                                      <td>No</td>
                                                <?php }
                                                 else
                                                 { ?>
                                                     <td>Yes</td>
                                                 <?php }
                                         }
                                         ?>
                                       
                                        <td><?php echo $row['o_status']; ?></td>
                                        <td><?php echo "<a href='new_order_details.php?oid={$row['ord_id']}'>Check </a>"?></td>
                                    </tr>
                                    <?php
                                     }
                                     }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer-->
            <?php
            include './admin-page-part/footer.php'
            ?>
            <!--//footer-->
        </div>

        <!-- side nav js -->
        <script src='js/SidebarNav.min.js' type='text/javascript'></script>
        <script>
    $('.sidebar-menu').SidebarNav()
        </script>
        <!-- //side nav js -->

        <!-- Classie --><!-- for toggle left push menu script -->
        <script src="js/classie.js"></script>
        <script>
var menuLeft = document.getElementById('cbp-spmenu-s1'),
    showLeftPush = document.getElementById('showLeftPush'),
    body = document.body;

showLeftPush.onclick = function () {
classie.toggle(this, 'active');
classie.toggle(body, 'cbp-spmenu-push-toright');
classie.toggle(menuLeft, 'cbp-spmenu-open');
disableOther('showLeftPush');
};

function disableOther(button) {
if (button !== 'showLeftPush') {
    classie.toggle(showLeftPush, 'disabled');
}
}
        </script>
        <!-- //Classie --><!-- //for toggle left push menu script -->

        <!--scrolling js-->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!--//scrolling js-->

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.js"></script>

    </body>
</html>