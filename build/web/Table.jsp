<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bootstrap Simple Data Table</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            table.dataTable thead .sorting:after,
            table.dataTable thead .sorting:before,
            table.dataTable thead .sorting_asc:after,
            table.dataTable thead .sorting_asc:before,
            table.dataTable thead .sorting_asc_disabled:after,
            table.dataTable thead .sorting_asc_disabled:before,
            table.dataTable thead .sorting_desc:after,
            table.dataTable thead .sorting_desc:before,
            table.dataTable thead .sorting_desc_disabled:after,
            table.dataTable thead .sorting_desc_disabled:before {
                bottom: .5em;
            }
        </style>
        <script>
            $(document).ready(function () {
                $('#dtBasicExample').DataTable();
                $('.dataTables_length').addClass('bs-select');
            });
        </script>
    </head>
    <body>
        <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
 
    <thead>
        <tr>

            <th>FirstName</th>
            <th>LastName</th>
            <th>Email</th>
            <th>Birth Of Date</th>
            <th>Address</th>
            <th>School</th>
            <th>college</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${detaillist}" var="details">
        <tr>

            <td>${details.firstname}</td>
            <td>${details.lastname}</td>
            <td>${details.email}</td>
            <td>${details.address}</td>
            <td>${details.birthofdate}</td>
            <td>${details.school}</td>
            <td>${details.college}</td>
            <td><a href="#">View</a> | <a href="#">Edit</a> | <a href="#">Send Message</a></td>
        </tr>
    </c:forEach>

</tbody>
    </table>
</div>   
</body>
</html>