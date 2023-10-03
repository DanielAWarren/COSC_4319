CREATE table user_info(
	Email text primary key,
	First_name text,
	Last_name text
);

create table user_app(
	Email text,
	currentBW real,
	goalBW real,
	allocatedCarb integer,
	allocatedFat integer,
	allocatedPro integer,
	allergen_id integer,
	Foreign Key (Email) references user_info(Email),
	foreign key (allergen_id) references allergies(id)
);

create table inventory(
	ingredient_id integer primary key autoincrement,
	ingredient_name text,
	ingredient_brand text,
	quantity_left real,
	quantity_unit text,
	ingredient_carbs integer,
	ingredient_fats integer,
	ingredient_protein integer
);

create table recipes(
	rec_id integer primary key autoincrement,
	recipe_name text,
	ing_id integer,
	ing_quantity integer,
	quantity_unit text,
	allergen_id,
	foreign key(allergen_id) references allergies(id),
	foreign key(ing_id) references inventory(ingredient_id)
);

create table allergies(
	id integer primary key autoincrement,
	name text,
	description text
);





