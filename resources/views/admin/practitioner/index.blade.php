@extends('admin.layouts.app')
@section('content')
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Practitioners</h1>
        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
    </div>
    
    <!-- Modal -->
    <!-- <button type="button" class="btn btn-info openPopup" data-toggle="modal" data-href="{{route('practitionersEdit')}}">Upload file</button> -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <!-- <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6> -->
        </div>
        <div class="card-body">
            <div class="form-group col-md-2 float-right nopadding">
                <select class="form-control" name="filter_status" id="filter_status">
                    <option value=''>-- Select status--</option>
                    <option value='validation'>Validation</option>
                    <option value='rejected'>Rejected</option>
                    <option value='disabled'>Disabled</option>
                    <option value='active'>Active</option>
                </select>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Location</th>
                            <th>Speciality</th>
                            <th>Practice</th>
                            <th>Created</th>
                            <th>Status</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@push('css')
    <link href="/backend/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
@endpush
@push('script')
    <script src="/backend/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/backend/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function() {
            // Init table
            var dataTable = $('#dataTable').DataTable({
                "processing": true,
                "serverSide": true,
                'searching': false,
                "ajax": {
                    "url": "{{ route('practitionersData') }}",
                    "data": function(data){
                        data['sort_field'] = data.columns[data.order[0].column].name;
                        data['sort_dir'] =  data.order[0].dir;

                        delete data.columns;
                        delete data.order;
                        delete data.search;

                        var filter_status = $('#filter_status').val();
                        data.filter_status = filter_status;
                    }
                },
                "columns": [
                    { "data": 'id', 'name': 'practitioner.id',"orderable": true},
                    { "data": "fullname", "name":'fullname', "orderable": true },
                    { "data": "location", "name":'location', "orderable": true },
                    { "data": "speciality_title", "name":'speciality_title', "orderable": true },
                    { "data": "practice_title", "name":'practice_title', "orderable": true },
                    { "data": "created_at", "name":'created_at', "orderable": true },
                    { "data": "status", "name":'practitioner.status', "orderable": true, "sClass": 'status' },
                    { "data": "id", "name":'edit', "orderable": false, "sClass": "content-middel", 
	            	render: function ( data, type, row, meta) {
	            	    return '<a href="javascript:;" edit_item_id="'+row.id+'" class="btn btn-success item_edit btn-sm btn-circle"><i class="fas fa-edit"></i></a>';
	                }},
                ],
                "columnDefs": [
                    {"width": "5%", "targets": 0},
                    {"width": "10%", "targets": 1},
                    {"width": "10%", "targets": 2},
                    {"width": "10%", "targets": 3},
                    {"width": "10%", "targets": 4},
                    {"width": "10%", "targets": 5},
                    {"width": "10%", "targets": 6},
                    {"width": "5%", "targets": 7},
                ],
                "order": [
                    ['0', "desc"]
                ]
            });

            $('#filter_status').change(function(){
                dataTable.draw();
            });

            // Edit modal
            var itemPopup = new Popup;
                itemPopup.init({
                    size:'modal-xl',
                    identifier:'add-item',
                    minHeight: '200',
                })
                window.itemPopup = itemPopup;

                $('#dataTable').on('click', '.item_edit', function (e) {
                    editId = $(this).attr('edit_item_id');
                    itemPopup.setTitle('Edit practitioner');
                    itemPopup.load("{{route('practitionersEdit')}}?id="+editId, function () {
                        this.open();
                    });
                });
        });
    </script>
@endpush
@endsection