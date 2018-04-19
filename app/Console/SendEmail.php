<?php

namespace App\Console;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class SendEmail extends Command {

    protected $signature = 'emails:send';
    protected $description = 'Sending emails to the users.';

    public function __construct() {
        parent::__construct();
    }

    public function handle() {
        $data = array(
            'name' => "Mona"
        );

        Mail::send('emails.test', $data, function ($message) {

            $message->from('admin@admin.com');

            $message->to('admin@admin.com')->subject('Payroll Reminder');
        });
        $this->info('The emails are send successfully!');
    }

}
