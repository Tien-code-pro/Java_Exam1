<%@ page import="com.t2010a.t2010a_again.entity.Customer" %><%--
  Created by IntelliJ IDEA.
  User: PhạmMinh
  Date: 12/05/2022
  Time: 5:30 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
'<%
    Customer customer = (Customer) request.getAttribute("customer");
    int action = (int) request.getAttribute("action");
    String url = "/admin/customers/create";
    if(action == 2){
        url = "/admin/customers/edit";
    }
%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="/admin/includes/head.jsp"></jsp:include>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- Navbar -->
    <jsp:include page="/admin/includes/navbar.jsp"></jsp:include>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <jsp:include page="/admin/includes/sidebar.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Create Customer</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/home">Home</a></li>
                            <li class="breadcrumb-item active">Customer</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-8">
                        <!-- general form elements -->
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Create Customer</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form action="<%=url%>" method="post">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="id">Id</label>
                                        <input type="text" class="form-control" id="id" name="id" placeholder="Enter id" value="<%=customer.getId()%>" <%=action == 2 ? "readonly":""%>>
                                    </div>
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter name"  value="<%=customer.getName()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="phone">Phone</label>
                                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone" value="<%=customer.getPhone()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="image">Image</label>
                                        <input type="text" class="form-control" id="image" name="image" placeholder="Enter image" value="<%=customer.getImage()%>">
                                    </div>
                                    <!-- Date dd/mm/yyyy -->
                                    <div class="form-group">
                                        <label for="dob">Birthday</label>
                                        <div class="input-group">
                                            <input type="date" class="form-control" id="dob" name="dob"  value="<%=customer.getDobString()%>">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <!-- /.form group -->
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    </div>
                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <button type="reset" class="btn btn-default">Reset</button>
                                </div>
                            </form>
                        </div>
                        <!-- /.card -->

                    </div>
                    <!--/.col (left) -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <jsp:include page="/admin/includes/footer.jsp"></jsp:include>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<jsp:include page="/admin/includes/script.jsp"></jsp:include>
<!-- jQuery -->
<%--<script src="/Content/plugins/jquery/jquery.min.js"></script>--%>
<%--<!-- Bootstrap 4 -->--%>
<%--<script src="/Content/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<%--<!-- bs-custom-file-input -->--%>
<%--<script src="/Content/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>--%>
<%--<!-- Page specific script -->--%>
<%--<script src="/Content/plugins/moment/moment.min.js"></script>--%>
<%--<script src="/Content/plugins/inputmask/jquery.inputmask.min.js"></script>--%>
<%--<!-- date-range-picker -->--%>
<%--<script src="/Content/plugins/daterangepicker/daterangepicker.js"></script>--%>
<%--<!-- bootstrap color picker -->--%>
<%--<script src="/Content/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>--%>
<%--<!-- Tempusdominus Bootstrap 4 -->--%>
<%--<script src="/Content/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>--%>
<%--<!-- Bootstrap Switch -->--%>
<%--<script src="/Content/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>--%>
<%--<!-- BS-Stepper -->--%>
<%--<script src="/Content/plugins/bs-stepper/js/bs-stepper.min.js"></script>--%>
<%--<!-- dropzonejs -->--%>
<%--<script src="/Content/plugins/dropzone/min/dropzone.min.js"></script>--%>
<%--<!-- AdminLTE App -->--%>
<%--<script src="/Content/dist/js/adminlte.min.js"></script>--%>
<%--<!-- AdminLTE for demo purposes -->--%>
<%--<script src="/Content/dist/js/demo.js"></script>--%>
<%--<!-- Page specific script -->--%>
<%--<script>--%>
<%--    $(function () {--%>
<%--        bsCustomFileInput.init();--%>
<%--    });--%>
<%--</script>--%>
<%--
<script>
    $(function () {
        //Datemask dd/mm/yyyy
        $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
        //Datemask2 mm/dd/yyyy
        $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
        //Money Euro
        $('[data-mask]').inputmask()

        //Date picker
        $('#reservationdate').datetimepicker({
            format: 'L'
        });

        //Date and time picker
        $('#dob').datetimepicker({ icons: { time: 'far fa-clock' } });

        //Date range picker
        $('#reservation').daterangepicker()
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({
            timePicker: true,
            timePickerIncrement: 30,
            locale: {
                format: 'MM/DD/YYYY hh:mm A'
            }
        })
        //Date range as a button

        //Timepicker
        $('#timepicker').datetimepicker({
            format: 'LT'
        })

        //Bootstrap Duallistbox
        $('.duallistbox').bootstrapDualListbox()

        //Colorpicker
        $('.my-colorpicker1').colorpicker()
        //color picker with addon
        $('.my-colorpicker2').colorpicker()

        $('.my-colorpicker2').on('colorpickerChange', function(event) {
            $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
        })

        $("input[data-bootstrap-switch]").each(function(){
            $(this).bootstrapSwitch('state', $(this).prop('checked'));
        })

    })
    // BS-Stepper Init
    document.addEventListener('DOMContentLoaded', function () {
        window.stepper = new Stepper(document.querySelector('.bs-stepper'))
    })

    // DropzoneJS Demo Code Start
    Dropzone.autoDiscover = false

    // Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
    var previewNode = document.querySelector("#template")
    previewNode.id = ""
    var previewTemplate = previewNode.parentNode.innerHTML
    previewNode.parentNode.removeChild(previewNode)

    var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
        url: "/target-url", // Set the url
        thumbnailWidth: 80,
        thumbnailHeight: 80,
        parallelUploads: 20,
        previewTemplate: previewTemplate,
        autoQueue: false, // Make sure the files aren't queued until manually added
        previewsContainer: "#previews", // Define the container to display the previews
        clickable: ".fileinput-button" // Define the element that should be used as click trigger to select files.
    })

    myDropzone.on("addedfile", function(file) {
        // Hookup the start button
        file.previewElement.querySelector(".start").onclick = function() { myDropzone.enqueueFile(file) }
    })

    // Update the total progress bar
    myDropzone.on("totaluploadprogress", function(progress) {
        document.querySelector("#total-progress .progress-bar").style.width = progress + "%"
    })

    myDropzone.on("sending", function(file) {
        // Show the total progress bar when upload starts
        document.querySelector("#total-progress").style.opacity = "1"
        // And disable the start button
        file.previewElement.querySelector(".start").setAttribute("disabled", "disabled")
    })

    // Hide the total progress bar when nothing's uploading anymore
    myDropzone.on("queuecomplete", function(progress) {
        document.querySelector("#total-progress").style.opacity = "0"
    })

    // Setup the buttons for all transfers
    // The "add files" button doesn't need to be setup because the config
    // `clickable` has already been specified.
    document.querySelector("#actions .start").onclick = function() {
        myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
    }
    document.querySelector("#actions .cancel").onclick = function() {
        myDropzone.removeAllFiles(true)
    }
    // DropzoneJS Demo Code End
</script>
--%>
</body>
</html>

