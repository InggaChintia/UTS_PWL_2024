@extends('layouts.template')

@section('content')
<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <!-- Menampilkan kartu profil pengguna -->
            <div class="card shadow-lg border-0">
                <div class="card-header bg-primary text-white text-center">
                    <h3 class="card-title">Profil Pengguna</h3>
                </div>
                <div class="card-body text-center">
                    <!-- Foto profil dengan hover -->
                    <img src="{{ Storage::url($user->avatar) }}" alt="Foto Profil"
                         class="img-fluid rounded-circle mb-3 shadow" 
                         style="width: 150px; height: 150px; object-fit: cover; transition: transform 0.3s ease;">
                    
                    <!-- Efek hover pada foto profil -->
                    <script>
                        document.querySelector('img').addEventListener('mouseenter', function() {
                            this.style.transform = 'scale(1.1)';
                        });
                        document.querySelector('img').addEventListener('mouseleave', function() {
                            this.style.transform = 'scale(1)';
                        });
                    </script>

                    <!-- Detail profil dengan gaya yang lebih rapi -->
                    <h3 class="mt-3">{{ $user->nama }}</h3>
                    <p class="text-muted">Username: {{ $user->username }}</p>
                    <p class="text-muted">Password: ********</p>

                    <!-- Tombol aksi dengan ikon -->
                    <div class="d-grid gap-2">
                        <a href="{{ route('profile.edit') }}" class="btn btn-primary mb-2">
                            <i class="fas fa-user-edit"></i> Edit Profil
                        </a>
                        <a href="{{ route('password.change') }}" class="btn btn-warning">
                            <i class="fas fa-key"></i> Ganti Password
                        </a>
                    </div>
                </div>

                <!-- Footer Kartu untuk informasi tambahan (opsional) -->
                <div class="card-footer text-muted text-center">
                    <small>Last updated: {{ \Carbon\Carbon::parse($user->updated_at)->diffForHumans() }}</small>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
