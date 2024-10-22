<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            // Barang dari Supplier 1
            [
                'barang_id' => 1,
                'kategori_id' => 1,
                'barang_kode' => 'BRG001',
                'barang_nama' => 'Kaos Polos',
                'harga_beli' => 50000,
                'harga_jual' => 70000,
            ],
            [
                'barang_id' => 2,
                'kategori_id' => 1,
                'barang_kode' => 'BRG002',
                'barang_nama' => 'Kemeja Formal',
                'harga_beli' => 80000,
                'harga_jual' => 100000,
            ],
            [
                'barang_id' => 3,
                'kategori_id' => 1,
                'barang_kode' => 'BRG003',
                'barang_nama' => 'Celana Jeans',
                'harga_beli' => 130000,
                'harga_jual' => 150000,
            ],
            [
                'barang_id' => 4,
                'kategori_id' => 1,
                'barang_kode' => 'BRG004',
                'barang_nama' => 'Jaket Kulit',
                'harga_beli' => 180000,
                'harga_jual' => 200000,
            ],
            [
                'barang_id' => 5,
                'kategori_id' => 1,
                'barang_kode' => 'BRG005',
                'barang_nama' => 'Sepatu Sneakers',
                'harga_beli' => 450000,
                'harga_jual' => 400000,
            ],

            // Barang dari Supplier 2
            [
                'barang_id' => 6,
                'kategori_id' => 2,
                'barang_kode' => 'BRG006',
                'barang_nama' => 'Sabun Mandi',
                'harga_beli' => 10000,
                'harga_jual' => 15000,
            ],
            [
                'barang_id' => 7,
                'kategori_id' => 2,
                'barang_kode' => 'BRG007',
                'barang_nama' => 'Shampoo',
                'harga_beli' => 7000,
                'harga_jual' => 10000,
            ],
            [
                'barang_id' => 8,
                'kategori_id' => 2,
                'barang_kode' => 'BRG008',
                'barang_nama' => 'Pasta Gigi',
                'harga_beli' => 4000,
                'harga_jual' => 7000,
            ],
            [
                'barang_id' => 9,
                'kategori_id' => 2,
                'barang_kode' => 'BRG009',
                'barang_nama' => 'Deodoran',
                'harga_beli' => 15000,
                'harga_jual' => 20000,
            ],
            [
                'barang_id' => 10,
                'kategori_id' => 2,
                'barang_kode' => 'BRG010',
                'barang_nama' => 'Lotion Kulit',
                'harga_beli' => 20000,
                'harga_jual' => 27000,
            ],

            // Barang dari Supplier 3
            [
                'barang_id' => 11,
                'kategori_id' => 4,
                'barang_kode' => 'BRG011',
                'barang_nama' => 'Meja Makan',
                'harga_beli' => 200000,
                'harga_jual' => 250000,
            ],
            [
                'barang_id' => 12,
                'kategori_id' => 4,
                'barang_kode' => 'BRG012',
                'barang_nama' => 'Kursi Tamu',
                'harga_beli' => 90000,
                'harga_jual' => 120000,
            ],
            [
                'barang_id' => 13,
                'kategori_id' => 4,
                'barang_kode' => 'BRG013',
                'barang_nama' => 'Rak Buku',
                'harga_beli' => 50000,
                'harga_jual' => 80000,
            ],
            [
                'barang_id' => 14,
                'kategori_id' => 4,
                'barang_kode' => 'BRG014',
                'barang_nama' => 'Sofa Minimalis',
                'harga_beli' => 60000,
                'harga_jual' => 100000,
            ],
            [
                'barang_id' => 15,
                'kategori_id' => 4,
                'barang_kode' => 'BRG015',
                'barang_nama' => 'Lemari Pakaian',
                'harga_beli' => 500000,
                'harga_jual' => 700000,
            ],
        ];
        DB::table('m_barang')->insert($data);
    }
}
