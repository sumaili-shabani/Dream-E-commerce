<?php

use Illuminate\Database\Seeder;
use App\Models\Category\{Category};

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Category::create([
            'name'      => "Appareil Electronique",
            'slug'      => "Appareil-electronique",
        ]);

        Category::create([
            'name'      => "Phone Mobile",
            'slug'      => "Phone-mobile",
        ]);

        Category::create([
            'name'      => "Shop Recent",
            'slug'      => "Shop-recent",
        ]);

        Category::create([
            'name'      => "Meuble",
            'slug'      => "meuble",
        ]);

        Category::create([
            'name'      => "Livre",
            'slug'      => "livre",
        ]);
       
    }
}
