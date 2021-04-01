<div class="row">
    <input type="hidden" name="id" id="id" value="{{$item->id}}" />
    <div class="col-lg-12">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <!-- <h6 class="m-0 font-weight-bold text-primary">Status</h6> -->
            </div>
            <div class="card-body">
                <div class="form-group el_item">
                    <span class="el_item">Title:
                        <input type="text" name="title" value="{{$item->title}}" class="form-control" />
                    </span>
                </div>
                <div class="my-2"></div>   
                <div class="form-group">
                    <span class="el_item">Published:
                        <select class="form-select form-control" id="practitioner_status" aria-label="Default select example">
                            <option @if($item->published == 1) selected @endif value="1">Published</option>
                            <option @if($item->published == 0) selected @endif value="0">Unpublished</option>
                        </select>
                    </span>
                </div>
                <div class="my-2"></div>   
            </div>
        </div>
    </div>
</div>
<div class="modal-buttons">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <button type="button" class="btn btn-success" data-dismiss="modal">Save</button>
</div>
<script>
        function saveStatus(status){
            Loading.add($('#changeStatusBtn'));

            id = $('#practitioner_id').val();
            status = $('#practitioner_status').val();
            statusText = $( "#practitioner_status option:selected" ).text()

            $.ajax({
                type: "GET",
                url: "{{route('changeStatus')}}",
                data: { id:id, status: status },
                dataType: 'json',
                success: function(response){
                    if(response.status == 0){
                        toastr['error'](response.message, 'Error');
                    }
                    if(response.status == 1){
                        $('#row_'+id+" .status").html(statusText)
                        toastr['success']('Saved.', 'Success');
                    }
                    Loading.remove($('#changeStatusBtn'));
                }
            });  
        }
</script>