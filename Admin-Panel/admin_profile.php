<?php
require '../connect.php'; 
session_start();
$user_id=$_SESSION['id'];
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
            <div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
                <!--left-fixed -navigation-->

            </div>
            <!--left-fixed -navigation-->

            <!-- header-starts -->
            <?php
            include './admin-page-part/side-bar.php'
            ?>

            <!-- header-starts -->
            <?php
            include './admin-page-part/header.php'
            ?>
            <!-- //header-ends -->
            <!-- main content start-->
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="tables"> 
                        <div class="panel-body widget-shadow">
                            <h4>My Account</h4>
                            <table class="table">
                                <tbody>
                                    <?php
                                    $query = mysqli_query($connect, "select * from user_mst where user_id='$user_id'");
                                    $row = mysqli_fetch_array($query);
                                    echo "<tr>";
                                    echo "<th>Your Name</th>";
                                    echo "<th>{$row[3]} {$row[4]} {$row[5]}</th>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<th>Your Gender</th>";
                                    echo "<th>{$row[8]}</th>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<th>Your Mobile Number</th>";
                                    echo "<th>{$row[6]}</th>";
                                    echo "</tr>";
                                    echo "<tr>";
                                    echo "<th>Your Email Address</th>";
                                    echo "<th>{$row[7]}</th>";
                                    echo "</tr>";
                                     echo "<tr>";
                                    echo "<th>Your Address</th>";
                                    echo "<th>{$row[9]}</th>";
                                    echo "</tr>";
                                    ?>
                                </tbody>
                            </table>
                            <?php
                         $query1 = mysqli_query($connect, "select* from user_mst where user_id=$user_id") or die (mysqli_error($connect));
                            while($row=mysqli_fetch_array($query1))
                            { ?>
                            <div>
                                <br><br> <h4 style="font-size:22px;"><?php echo "<a href='../E-Pharmacy/change_pass.php?uid={$row[0]}'>Change Password</a>";?></h4>
                            </div>
                            <?php }?>
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