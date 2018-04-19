<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\Access\User\User;
use App\Models\Department\Department;
use Illuminate\Http\Request;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Helpers\EmployeesSalariesService;
use Validator;
use Carbon\Carbon as Carbon;

class PayrollController extends APIController
{
    
    public function yearPayroll(Request $request){
        
        $validation = Validator::make($request->all(), [
            'department'     => 'integer',
        ]);
        
        if ($validation->fails()) {
            return $this->throwValidation($validation->messages()->first());
        }
        
        
        $allPayrollArr = array();
        $dt = Carbon::now();

        for ($i = $dt->month; $i <= 12; $i++) {

            $monthPayrollArr = array();

            $monthPayrollArr['Month'] = EmployeesSalariesService::getMonthName($i);
            $monthPayrollArr['Salaries_payment_day'] = EmployeesSalariesService::getPayrollSalaryDate($i);
            $monthPayrollArr['Bonus_payment_day'] = EmployeesSalariesService::getPayrollBonusDate($i);
            $monthPayrollArr['Salaries_total'] = EmployeesSalariesService::getTotalSalaries($request->only(['department']));
            $monthPayrollArr['Bonus_total'] = EmployeesSalariesService::getTotalBonus($request->only(['department']));
            $monthPayrollArr['Payments_total'] = EmployeesSalariesService::getTotalPayroll($request->only(['department']));

            $allPayrollArr[] = $monthPayrollArr;
        }
       
        
        return $this->respond([
            'message'   => 'success',
            'Months'  => $allPayrollArr,
        ]);
    }
    
    public function getDepartments(){

        $departmentsArr = array();
        
        $departments = Department::get();
        foreach($departments as $department){
            $departmentArr = array();
            $departmentArr['id'] = $department->id;
            $departmentArr['name'] = $department->title;
            $departmentsArr[] =  $departmentArr;
        }
        return $this->respond([
            'message'   => 'success',
            'departments'  => $departmentsArr,
        ]);
    }
}
