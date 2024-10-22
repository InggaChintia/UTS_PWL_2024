{{-- JS5 PRAKTIKUM 2 --}}

{{-- <section class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6"><h1>{{ $breadcrumb->title }}</h1></div>
        <div class="col-sm-g">
            <ol class="breadcrumb float-sm-right">
                @foreach ($breadcrumb->list as $key => $value)
                @if($key == count($breadcrumb->list) - 1)
                <li class="breadcrumb-item active">{{ $value }}</li>
                @else
                <li class="breadcrumb-item">{{ $value }}</li>
                @endif
                @endforeach
            </ol>
        </div>
    </div>
    </div> 
</section>        --}}
                {{-- @endforeach
          <h1>Blank Page</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Blank Page</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section> --}}


  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>{{ $breadcrumb->title }}</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            @foreach ($breadcrumb->list as $key => $value)
              @if ($key == count($breadcrumb->list) - 1)
                <!-- Jika $value adalah string -->
                @if (is_string($value))
                  <li class="breadcrumb-item active">{{ $value }}</li>
                @else
                  <!-- Jika $value adalah objek -->
                  <li class="breadcrumb-item active">{{ $value->label }}</li>
                @endif
              @else
                <!-- Jika $value adalah string -->
                @if (is_string($value))
                  <li class="breadcrumb-item">{{ $value }}</li>
                @else
                  <!-- Jika $value adalah objek -->
                  <li class="breadcrumb-item"><a href="{{ $value->url }}">{{ $value->label }}</a></li>
                @endif
              @endif
            @endforeach
          </ol>
        </div>
      </div>
    </div>
</section>