<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Posts;
use App\Models\Category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(5)->create();
        Posts::factory(20)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => 'Administrator',
            'username' => 'admin',
            'email' => 'admin@mail.com',
            'is_admin' => 1,
            'password' => bcrypt('admin123')

        ]);
        // User::create([
        //     'name' => 'Rajab',
        //     'email' => 'rajab@example.com',
        //     'password' => bcrypt('1234')

        // ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'

        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'

        ]);
        Category::create([
            'name' => 'Design',
            'slug' => 'Design'

        ]);

        // Posts::create([
        //     'title' => 'Post 1 Bogor Kota',
        //     'category_id' => 1,
        //     'user_id' => 1,
        //     'slug' => 'post-1-bogor-kota',
        //     'excerpt' => 'tenetur amet iste quaerat harum ab eos ex? Possimus praesentium, nesciunt rem delectus mollitia quod dolor',
        //     'body' => '<p> ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, inventore explicabo. Similique necessitatibus, sint fuga dolorem magni illum error eos animi ipsam iure amet optio? Dicta enim veritatis, maxime expedita ducimus nihil magnam iste soluta perspiciatis ipsum, minima omnis a rerum quasi iure nisi dolorum aut ipsam eius exercitationem?</p>
        //     <p> Incidunt, magni. Rerum in aut vitae quos alias eos suscipit ex nisi quasi natus adipisci eaque odio, architecto ipsum, perspiciatis voluptatem repellat iure velit est dolorem sint laboriosam asperiores. Possimus inventore aspernatur</p>
        //     <p> tenetur amet iste quaerat harum ab eos ex? Possimus praesentium, nesciunt rem delectus mollitia quod dolor inventore quia nostrum minus iste aperiam ratione numquam fuga suscipit nisi veniam quam adipisci! Reprehenderit unde, delectus cupiditate, dolorem veniam eos excepturi quibusdam possimus commodi, odio eum. Esse nisi quisquam nesciunt adipisci quia laboriosam atque enim at, rerum dolor tenetur tempora deserunt harum debitis explicabo suscipit magni veritatis officia laborum nobis maiores impedit.</p>'
        // ]);

        // Posts::create([
        //     'title' => 'Post 2 Bogor Kota',
        //     'category_id' => 2,
        //     'user_id' => 2,
        //     'slug' => 'post-2-bogor-kota',
        //     'excerpt' => 'tenetur amet iste quaerat harum ab eos ex? Possimus praesentium, nesciunt rem delectus mollitia quod dolor',
        //     'body' => '<p> ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, inventore explicabo. Similique necessitatibus, sint fuga dolorem magni illum error eos animi ipsam iure amet optio? Dicta enim veritatis, maxime expedita ducimus nihil magnam iste soluta perspiciatis ipsum, minima omnis a rerum quasi iure nisi dolorum aut ipsam eius exercitationem?</p>
        //     <p> Incidunt, magni. Rerum in aut vitae quos alias eos suscipit ex nisi quasi natus adipisci eaque odio, architecto ipsum, perspiciatis voluptatem repellat iure velit est dolorem sint laboriosam asperiores. Possimus inventore aspernatur</p>
        //     <p> tenetur amet iste quaerat harum ab eos ex? Possimus praesentium, nesciunt rem delectus mollitia quod dolor inventore quia nostrum minus iste aperiam ratione numquam fuga suscipit nisi veniam quam adipisci! Reprehenderit unde, delectus cupiditate, dolorem veniam eos excepturi quibusdam possimus commodi, odio eum. Esse nisi quisquam nesciunt adipisci quia laboriosam atque enim at, rerum dolor tenetur tempora deserunt harum debitis explicabo suscipit magni veritatis officia laborum nobis maiores impedit.</p>'
        // ]);
    }
}
