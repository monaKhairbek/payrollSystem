
## Introduction
* This App to help adminnistrators to track the payroll of employees

## Installation

Copy the example env file and make the required configuration changes in the .env file

    cp .env.example .env

Install all the dependencies using composer

    composer install

Generate a new application key

    php artisan key:generate

Generate a new JWT authentication secret key

    php artisan jwt:secret

Run the database migrations (**Set the database connection in .env before migrating**)

    php artisan migrate

Run the database seeders

    php artisan db:seed

Install the javascript dependencies using npm

    npm install

Compile the dependencies

    npm run development

For generating the files of unisharp file manager

    php artisan vendor:publish --tag=lfm_public

For linking storage folder in public
    
    php artisan storage:link


## Logging In

* Admin Istrator: `admin@admin.com`

Password: `1234`

## Can Add new Department and assign department to each employee user

## Can use 5 Endpoints:
 1- Login
 2- Logout
 3- Refresh token
 4- Get Departments
 5- year Payroll

## PostMan Collection exist in project root and attached to email


## License

[MIT LICENSE](https://github.com/viralsolani/laravel-adminpanel/blob/master/LICENSE.txt)
