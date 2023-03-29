<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>My First Bootstrap Page</h1>
  <p>Resize this responsive page to see the effect!</p> 
</div>
  
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <form action="{{url('/create')}}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
          <label for="disabledTextInput">Title</label>
          <input type="text" id="title" name="title" class="form-control" placeholder="Title" value="{{ $datas->title }}">
        </div>
        <div class="form-group">
          <label for="disabledTextInput">Dedcription</label>
          <textarea class="form-control" id="editor" placeholder="Description Post" name="description">{!! $datas->description !!}</textarea>
          <br>
          <button type="submit" class="btn btn-primary">Submit</button>
          <a href="{{ url('/data' ) }}" class="btn btn-secondary ml-2" title="Cancel">
              Cancel
          </a>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- <script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script> -->
<script src="{{ asset('ckeditor5/ckeditor.js') }}"></script>
<script>
        ClassicEditor
                .create( document.querySelector( '#editor' ),{
                  ckfinder:{
                    uploadUrl: '{{ route('ckeditor.upload').'?_token='.csrf_token() }}'
                  }
                } )
                .then( editor => {
                        console.log( editor );
                } )
                .catch( error => {
                        console.error( error );
                } );
</script>

</body>
</html>
