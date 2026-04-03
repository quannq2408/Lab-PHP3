<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(10)->create();
        DB::table('users')->insert([
            'name' => 'asdasdasdasd', 'email' => 'hehehe@gmail.com',
            'password' =>bcrypt('hehe'), 'idgroup'=>1, 'diachi' =>'THANHHOA'
        ]);
        DB::table('users')->insert([
            'name' => 'asdvxsxcvxcv', 'email' => 'fghfgh@gmail.com',
            'password' =>bcrypt('hehe'), 'idgroup'=>1, 'diachi' =>'THANHHOA'
        ]);
        DB::table('users')->insert([
            'name' => '67tuytyuty', 'email' => 'tyutyu@gmail.com',
            'password' =>bcrypt('hehe'), 'idgroup'=>0, 'diachi' =>'THANHHOA'
        ]);
    }
}
