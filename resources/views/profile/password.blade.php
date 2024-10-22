@extends('layouts.template')

@section('content')
<div class="container mt-5">
    <h2 class="text-center mb-4">Ganti Password</h2>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <!-- Menampilkan pesan sukses jika ada -->
            @if (session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif

            <!-- Kartu untuk form ganti password -->
            <div class="card shadow-lg">
                <div class="card-body">
                    <form action="{{ route('password.update') }}" method="POST">
                        @csrf
                        @method('PUT')

                        <!-- Input Password Saat Ini -->
                        <div class="form-group mb-3">
                            <label for="current_password">Password Saat Ini</label>
                            <input type="password" class="form-control" id="current_password" name="current_password" required>
                        </div>

                        <!-- Input Password Baru -->
                        <div class="form-group mb-3">
                            <label for="new_password">Password Baru</label>
                            <input type="password" class="form-control" id="new_password" name="new_password" required>
                        </div>

                        <!-- Input Konfirmasi Password Baru -->
                        <div class="form-group mb-3">
                            <label for="new_password_confirmation">Konfirmasi Password Baru</label>
                            <input type="password" class="form-control" id="new_password_confirmation" name="new_password_confirmation" required>
                        </div>

                        <!-- Tombol Simpan -->
                        <button type="submit" class="btn btn-success w-100">Update Password</button>
                    </form>

                    <!-- Tombol Kembali -->
                    <a href="{{ route('profile.profil') }}" class="btn btn-secondary w-100 mt-3">Kembali ke Profil</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
