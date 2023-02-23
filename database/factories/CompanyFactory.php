<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Company>
 */
class CompanyFactory extends Factory
{
  /**
   * Define the model's default state.
   *
   * @return array<string, mixed>
   */
  public function definition()
  {
    $created = fake()->dateTimeBetween('-30 days', '-1 days');
    return [
      'name' => fake()->company(),
      'inn' => fake()->randomNumber(8),
      'info' => fake()->realTextBetween(100, 500),
      'gendir' => fake()->name(),
      'address' => fake()->address(),
      'phone' => fake()->phoneNumber(),
      'author_id' => rand(1, 10),
      'created_at' => $created,
      'updated_at' => $created,
    ];
  }
}
