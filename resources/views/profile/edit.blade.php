@extends('layouts.template')

@section('title', 'Edit Profil')

@section('content')

@php
    $activeMenu = 'profile'; // Set active menu to 'profile'
@endphp

<div class="container mt-5">
    <h2 class="text-center mb-4">Edit Profil Pengguna</h2>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <!-- Menampilkan pesan sukses -->
            @if (session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif

            <div class="card shadow-lg">
                <div class="card-body">
                    <!-- Form untuk mengedit profil -->
                    <form action="{{ route('profile.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <!-- Input Nama -->
                        <div class="form-group mb-3">
                            <label for="nama">Nama</label>
                            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{ old('nama', $user->nama) }}" required>
                            @error('nama')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Input Username -->
                        <div class="form-group mb-3">
                            <label for="username">Username</label>
                            <input type="text" class="form-control @error('username') is-invalid @enderror" id="username" name="username" value="{{ old('username', $user->username) }}" required>
                            @error('username')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Input Foto Profil -->
                        <div class="form-group mb-3">
                            <label for="avatar">Foto Profil</label>
                            <input type="file" class="form-control @error('avatar') is-invalid @enderror" id="avatar" name="avatar" accept="image/*">
                            @error('avatar')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror

                            <!-- Menampilkan foto profil saat ini jika ada -->
                            @if ($user->avatar)
                                <div class="mt-3 text-center">
                                    <img src="{{ Storage::url($user->avatar) }}" alt="Foto Profil" class="img-thumbnail mb-2" width="150">
                                    <p>Foto Profil Saat Ini</p>
                                </div>
                            @else
                                <p class="mt-3">Tidak ada foto profil saat ini.</p>
                            @endif
                        </div>

                        <!-- Tombol Simpan -->
                        <button type="submit" class="btn btn-primary w-100">Simpan Perubahan</button>
                    </form>

                    <!-- Tombol Kembali -->
                    <a href="{{ route('profile.profil') }}" class="btn btn-secondary w-100 mt-3">Kembali ke Profil</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
