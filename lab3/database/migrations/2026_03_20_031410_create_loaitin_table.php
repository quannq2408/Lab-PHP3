<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('loaitin', function (Blueprint $table) {
            $table->increments('id'); 
            
            $table->string('ten', 255); 
            
            $table->integer('thuTu')->default(0); 
            
            $table->tinyInteger('AnHien')->default(1); 
            
            $table->timestamps(); 
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('loaitin');
    }
};