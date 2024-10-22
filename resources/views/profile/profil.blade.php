@extends('layouts.template')

@section('content')
<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <!-- Menampilkan kartu profil pengguna -->
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-white text-center">
                    <h3 class="card-title">Profil Pengguna</h3>
                </div>
                <div class="card-body text-center">
                    <!-- Foto profil -->
                    <img src="{{ Storage::url($user->avatar) }}" alt="Foto Profil"
                         class="img-fluid rounded-circle mb-3" style="width: 150px; height: 150px; object-fit: cover;">

                    <!-- Detail profil -->
                    <h3>{{ $user->nama }}</h3>
                    <p>Username: {{ $user->username }}</p>
                    <p>Password: ********</p>

                    <!-- Tombol aksi -->
                    <div class="d-grid gap-2">
                        <a href="{{ route('profile.edit') }}" class="btn btn-primary mb-2">Edit Profil</a>
                        <a href="{{ route('password.change') }}" class="btn btn-warning">Ganti Password</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
