<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Comment>
 */
class CommentFactory extends Factory
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
      'comment' => fake()->realTextBetween(100, 500),
      'comp_column' => rand(0, 6),
      'comp_id' => rand(1, 20),
      'created_at' => $created,
      'updated_at' => $created,
    ];
  }

  public function randomColumn(){
    $rand = random(0, 6);

  }
}
