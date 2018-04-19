<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\Access\User\User;

class EmployeesSalariesServiceProvider extends ServiceProvider
{
    Public static function getTotalSalaries($department = null){
        if($department){
            return User::where('department_id', $department)->sum('salary');
        }
        return User::sum('salary');
        
    }
    
    Public static function getTotalBonus($department = null){
        if($department){
            return User::where('department_id', $department)->sum('bonus');
        }
        return User::sum('bonus');
    }
    
    public static function getTotalPayroll($department = null){
        
        if($department){
            return (User::where('department_id', $department)->sum('bonus') + User::where('department_id', $department)->sum('salary'));
        }
        return (User::sum('bonus') + User::sum('salary'));
        
    }
    
}
