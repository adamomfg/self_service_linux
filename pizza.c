#define pizza 1
# define large 2
# define thin_crust 6
#define meat_lovers 9

int make_pizza( int size, int crust_type, int specialty )
{
  int return_value = 0;

  /* Do stuff */

  return return_value;
}

int made_dinner( int meal_type )
{
  int return_value = 0;

  return_value = make_pizza( large, thin_crust, meat_lovers );

  return return_value;
}

int main (void)
{
  int return_value = 0;

  return_value = make_dinner( pizza );

  return return_value;
}
