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
      <a href="{{ url('/insert' ) }}" class="btn btn-primary mb-2" title="Tambah">
          Tambah
      </a>
      <table id="bootstrap-data-table2" class="table table-striped">
          <thead>
              <tr class="font-weight-bold">
                  <td>#</td>
                  <td>Title</td>
                  <td>Aksi</td>
              </tr>
          </thead>
          <tbody>
              @foreach ($datas as $item)
              <tr>
                  <th>{{$loop->iteration}}</th>
                  <td class="dots-text">{{$item->title}}</td>
                  <td class="text-center">
                      <a href="{{ url('/edit/' .$item->id ) }}" class="btn btn-primary btn-sm" title="Edit">
                          Edit
                      </a> |
                      <a href="{{ url('/delete/' .$item->id ) }}" class="btn btn-danger btn-sm" title="Edit">
                          Hapus
                      </a> |
                      <a href="{{ url('/lihat/' .$item->id ) }}" class="btn btn-warning btn-sm" title="lihat">
                          Lihat
                      </a>
                  </td>
              </tr>
              @endforeach
          </tbody>
      </table>
    </div>
  </div>
</div>

</body>
</html>
