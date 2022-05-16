<script src="/Content/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/Content/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="/Content/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/Content/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/Content/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/Content/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/Content/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/Content/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/Content/plugins/jszip/jszip.min.js"></script>
<script src="/Content/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/Content/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/Content/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/Content/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/Content/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<script src="/Content/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- Page specific script -->
<script src="/Content/plugins/moment/moment.min.js"></script>
<script src="/Content/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="/Content/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="/Content/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="/Content/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="/Content/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="/Content/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="/Content/plugins/dropzone/min/dropzone.min.js"></script>
<!-- AdminLTE App -->
<script src="/Content/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/Content/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
    $(function () {
        $("#example1").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
        });
    });
</script>
<script>
    $(function () {
        bsCustomFileInput.init();
    });
</script>