<?php

namespace App\Helpers;

use App\Models\Access\User\User;
use Carbon\Carbon as Carbon;

class EmployeesSalariesService {

    Public static function getTotalSalaries($department = null) {
        if ($department) {
            return User::where('department_id', $department)->sum('salary');
        }
        return User::sum('salary');
    }

    Public static function getTotalBonus($department = null) {
        if ($department) {
            return User::where('department_id', $department)->sum('bonus');
        }
        return User::sum('bonus');
    }

    public static function getTotalPayroll($department = null) {

        if ($department) {
            return (User::where('department_id', $department)->sum('bonus') + User::where('department_id', $department)->sum('salary'));
        }
        return (User::sum('bonus') + User::sum('salary'));
    }

    public static function getPayrollSalaryDate($monthNumber) {

        $dt = Carbon::now();
        $monthName = EmployeesSalariesService::getMonthName($monthNumber);

        $lastDate = new Carbon('last day of ' . $monthName . ' ' . $dt->year);

        $lastDay = $lastDate->format('j');
        if ($lastDate->format('l') == 'Friday') {
            $lastDay--;
        }
        if ($lastDate->format('l') == 'Saturday') {
            $lastDay = $lastDay - 2;
        }

        return $lastDay;
    }

    public static function getPayrollBonusDate($monthNumber) {
       // sub
        $dt = Carbon::now();
        $monthName = EmployeesSalariesService::getMonthName($monthNumber);

        $monthFirstDate = new Carbon('first day of ' . $monthName . ' ' . $dt->year);
        $bonusDate = $monthFirstDate->addDays(14);
        if (in_array($bonusDate->format('l'), ['Friday', 'Saturday'])) {
           
            $bonusDate = Carbon::createFromDate($bonusDate->year, $bonusDate->month, $bonusDate->day)->next(Carbon::THURSDAY); 
        }
       
        return $bonusDate->format('j');
    }

    public static function getMonthName($monthNumber) {
        $dateObj = \DateTime::createFromFormat('!m', $monthNumber);
        return $dateObj->format('F');
    }

}
