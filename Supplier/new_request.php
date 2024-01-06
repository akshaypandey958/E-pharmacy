<?php
$msg="";
session_start();
$user_id=$_SESSION['id'];
include '../connect.php';
if (isset($_POST["submit"])) {
    $product=$_POST["product"];
    $price=$_POST["price"];
    $qty=$_POST["qty"];
    $pro_img = "../upload/" . $_FILES["image"]["name"];
    $details=$_POST["details"];
    $sql = "SELECT * FROM order_mst WHERE type='Req' and o_status='Pending' and by_id={$user_id}" or die(mysqli_error($connect));
    $result = mysqli_query($connect, $sql)or die(mysqli_error($connect));
    $count = mysqli_num_rows($result);
    if ($count) {
        $msg = '<div class="alert alert-danger" role="alert">
                 Your One Request Already Under Process !!!
                </div>';
    } else {
        $sql1 = "INSERT INTO order_mst(type,by_id,to_id,order_details,o_status)VALUES('Req',{$user_id},6,'{$details}','Pending')" or die(mysqli_error($connect));
        $result = (mysqli_query($connect, $sql1)) or die(mysqli_error($connect));
        if($result)
        {
        $ord_id = mysqli_insert_id($connect);
        $sql2 = "INSERT INTO order_description(pro_name,price,order_id,qty)VALUES('{$product}',$price,{$ord_id},$qty)" or die(mysqli_error($connect));
        $sql3 = "INSERT INTO img_mst(img_path,ord_id)VALUES('{$pro_img}',{$ord_id})" or die(mysqli_error($connect));
       $result1 = (mysqli_query($connect, $sql2) and mysqli_query($connect, $sql3)) or die(mysqli_error($connect));
        if ($result1) {
            $fileprocess = move_uploaded_file($_FILES["image"]["tmp_name"], $pro_img);
            if ($fileprocess) {
                $msg = '<div class="alert alert-success" role="alert">
                 Your Request Send Successfully
                </div>';
            }
        }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>E Pharmacy</title>
        <!--/tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!--//tags -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <!--pop-up-box-->
        <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <!--//pop-up-box-->
        <!-- price range -->
        <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
        <!-- fonts -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
        <script src="js/jquery-3.1.1.js"></script>    
        <script src="js/jquery.validate.js"></script>
        <style>
            .error{
                color:red;
            }
        </style>
    <body>
        <script src="js/jquery-3.1.1.js"></script>    
        <script src="js/jquery.validate.js"></script>
        <?php include './supplier_part/header.php' ?>
        <!-- top Products -->
        <div class="agileinfo-ads-display col-md-12 w3l-rightpro">
            <div style=" box-shadow: 0px 0px 15px 0px #D6D6D6;padding-left:80px;padding-bottom:80px;padding-top:60px;padding-right:80px;margin-bottom:15px;margin-top:15px;width:100%;height: 50%; ">
                <?php echo "$msg" ?>
                <form method="post" enctype="multipart/form-data" id="form">
                    <div class="creditly-wrapper wthree, w3_agileits_wrapper">
                        <div>
                            <div><label>Enter Product Name</label>
                                <br><input type="text" name="product" placeholder="Product Name" required  style="width: 60%;font-size: 15px;letter-spacing: 1px;padding: 7px 10px;margin-bottom: 20px;outline: none;border: none;box-shadow: 0px 0px 3px 0px rgb(0 0 0 / 31%);">
                                <br><label>Enter Product Price</label>
                                <br><input type="text" name="price" placeholder="product Price" required  style="width: 60%;font-size: 15px;letter-spacing: 1px;padding: 7px 10px;margin-bottom: 20px;outline: none;border: none;box-shadow: 0px 0px 3px 0px rgb(0 0 0 / 31%);" onkeyup="Validate(this)">
                                <br><label>Enter Available Quantity</label>
                                <br><input type="text" name="qty" placeholder="Product Quantity" required  style="width: 60%;font-size: 15px;letter-spacing: 1px;padding: 7px 10px;margin-bottom: 20px;outline: none;border: none;box-shadow: 0px 0px 3px 0px rgb(0 0 0 / 31%);" onkeyup="Validate(this)">
                                <br><label>Add Product Image</label>
                                <br><input type="file" name="image" required  style="width: 60%;font-size: 15px;letter-spacing: 1px;padding: 7px 10px;margin-bottom: 0px;outline: none;border: none;box-shadow: 0px 0px 3px 0px rgb(0 0 0 / 31%);">
                                <br><label>Add More Details</label>&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="details" placeholder="Enter More Details (Net Content, Composition)" style="width: 100%;font-size: 15px;letter-spacing: 1px;padding: 7px 10px;margin-bottom: 20px;outline: none;border: none;box-shadow: 0px 0px 3px 0px rgb(0 0 0 / 31%); resize:none"></textarea>
                            </div>
                            <button class="submit check_out" name="submit">Send Request</button>
                        </div>
                    </div>
                </form>
                </div>
            </div> 
            <div class="clearfix"></div>
                <script>


                $("#form").validate({
                    rules: {

                        product: {
                            required: true,
                            minlength: 3
                        },
                        price: "required",
                        qty: "required",
                        image: "required"
                        
                    },
                    messages: {

                        product: {
                            required: "Please Enter Product Name",
                            minlength: "Product name must consist of at least 3 characters"
                        },
                        price: "Please enter price",
                        qty: "Please enter quantity",
                         image: "Please select the image"
                     }
                });

                function Validate(no) {
                    no.value = no.value.replace(/[^ 0-9\n\r]+/g, '');
                }

                function Validatestring(no) {
                    no.value = no.value.replace(/[^ a-z A-Z\n\r]+/g, '');
                }



            </script>
            <!-- //top products -->
            <!-- footer -->
            <?php include './supplier_part/footer.php' ?>
            <!-- //footer -->
            <!-- js-files -->
            <!-- jquery -->
            <script src="js/jquery-2.1.4.min.js"></script>
            <!-- //jquery -->
            <!--quantity-->
            <script>
                                    $('.value-plus').on('click', function () {
                                        var divUpd = $(this).parent().find('.value'),
                                                newVal = parseInt(divUpd.text(), 10) + 1;
                                        divUpd.text(newVal);
                                    });

                                    $('.value-minus').on('click', function () {
                                        var divUpd = $(this).parent().find('.value'),
                                                newVal = parseInt(divUpd.text(), 10) - 1;
                                        if (newVal >= 1)
                                            divUpd.text(newVal);
                                    });
            </script>
            <!--quantity-->
            <!-- popup modal (for signin & signup)-->
            <script src="js/jquery.magnific-popup.js"></script>
            <script>
                                    $(document).ready(function () {
                                        $('.popup-with-zoom-anim').magnificPopup({
                                            type: 'inline',
                                            fixedContentPos: false,
                                            fixedBgPos: true,
                                            overflowY: 'auto',
                                            closeBtnInside: true,
                                            preloader: false,
                                            midClick: true,
                                            removalDelay: 300,
                                            mainClass: 'my-mfp-zoom-in'
                                        });

                                    });
            </script>
            <!-- Large modal -->
            <!-- <script>
                    $('#').modal('show');
            </script> -->
            <!-- //popup modal (for signin & signup)-->

            <!-- cart-js -->
            <script src="js/minicart.js"></script>
    <!--	<script>
                    paypalm.minicartk.render(); //use only unique class names other than paypalm.minicartk.Also Replace same class name in css and minicart.min.js
    
                    paypalm.minicartk.cart.on('checkout', function (evt) {
                            var items = this.items(),
                                    len = items.length,
                                    total = 0,
                                    i;
    
                            // Count the number of each item in the cart
                            for (i = 0; i < len; i++) {
                                    total += items[i].get('quantity');
                            }
    
                            if (total < 3) {
                                    alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
                                    evt.preventDefault();
                            }
                    });
            </script>-->
            <!-- //cart-js -->

            <!-- price range (top products) -->
            <script src="js/jquery-ui.js"></script>
            <script>
                                    //<![CDATA[ 
                                    $(window).load(function () {
                                        $("#slider-range").slider({
                                            range: true,
                                            min: 0,
                                            max: 50000,
                                            values: [50, 50000],
                                            slide: function (event, ui) {
                                                $("#amount").val("₹" + ui.values[0] + " - ₹" + ui.values[1]);
                                            }
                                        });
                                        $("#amount").val("₹" + $("#slider-range").slider("values", 0) + " - ₹" + $("#slider-range").slider("values", 1));
                                    }); //]]>
            </script>
            <!-- //price range (top products) -->

            <!-- flexisel (for special offers) -->
            <script src="js/jquery.flexisel.js"></script>
            <script>
                                    $(window).load(function () {
                                        $("#flexiselDemo1").flexisel({
                                            visibleItems: 3,
                                            animationSpeed: 1000,
                                            autoPlay: true,
                                            autoPlaySpeed: 3000,
                                            pauseOnHover: true,
                                            enableResponsiveBreakpoints: true,
                                            responsiveBreakpoints: {
                                                portrait: {
                                                    changePoint: 480,
                                                    visibleItems: 1
                                                },
                                                landscape: {
                                                    changePoint: 640,
                                                    visibleItems: 2
                                                },
                                                tablet: {
                                                    changePoint: 768,
                                                    visibleItems: 2
                                                }
                                            }
                                        });

                                    });
            </script>
            <!-- //flexisel (for special offers) -->

            <!-- password-script -->
            <script>
                window.onload = function () {
                    document.getElementById("password1").onchange = validatePassword;
                    document.getElementById("password2").onchange = validatePassword;
                }

                function validatePassword() {
                    var pass2 = document.getElementById("password2").value;
                    var pass1 = document.getElementById("password1").value;
                    if (pass1 != pass2)
                        document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                    else
                        document.getElementById("password2").setCustomValidity('');
                    //empty string means no validation error
                }
            </script>
            <!-- //password-script -->

            <!-- smoothscroll -->
            <script src="js/SmoothScroll.min.js"></script>
            <!-- //smoothscroll -->

            <!-- start-smooth-scrolling -->
            <script src="js/move-top.js"></script>
            <script src="js/easing.js"></script>
            <script>
                jQuery(document).ready(function ($) {
                    $(".scroll").click(function (event) {
                        event.preventDefault();

                        $('html,body').animate({
                            scrollTop: $(this.hash).offset().top
                        }, 1000);
                    });
                });
            </script>
            <!-- //end-smooth-scrolling -->

            <!-- smooth-scrolling-of-move-up -->
            <script>
                $(document).ready(function () {
                    /*
                     var defaults = {
                     containerID: 'toTop', // fading element id
                     containerHoverID: 'toTopHover', // fading element hover id
                     scrollSpeed: 1200,
                     easingType: 'linear' 
                     };
                     */
                    $().UItoTop({
                        easingType: 'easeOutQuart'
                    });

                });
            </script>
            <!-- //smooth-scrolling-of-move-up -->

            <!-- for bootstrap working -->
            <script src="js/bootstrap.js"></script>
            <!-- //for bootstrap working -->
            <!-- //js-files -->


    </body>

</html>