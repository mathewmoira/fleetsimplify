<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Vehicle::class, function (Faker\Generator $faker) {
    $name = $faker->name;
    return [
        'vname' => $name,
        'model' => str_slug($name),
        'numberplate' => $faker->text(),
        'capaity' => $faker->randomFloat(2, 0, 199),
        'user_id' => 1,
    ];
});
