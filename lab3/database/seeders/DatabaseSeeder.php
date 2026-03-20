<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        DB::table('loaitin')->insert([
            ['ten' => 'Sống đẹp', 'thuTu' => 1, 'AnHien' => 1],
            ['ten' => 'Du lịch', 'thuTu' => 2, 'AnHien' => 1],
            ['ten' => 'Xã hội', 'thuTu' => 3, 'AnHien' => 1],
            ['ten' => 'Khoa học', 'thuTu' => 4, 'AnHien' => 1],
            ['ten' => 'Sức khỏe', 'thuTu' => 5, 'AnHien' => 1],
        ]);
    }
}
