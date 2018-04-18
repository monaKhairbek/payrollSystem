<?php

namespace App\Http\Controllers\Backend\Department;

use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Department\ManageDepartmentRequest;
use App\Repositories\Backend\Department\DepartmentRepository;
use Carbon\Carbon;
use Yajra\DataTables\Facades\DataTables;

class DepartmentTableController extends Controller
{
    /**
     * @var DepartmentRepository
     */
    protected $department;

    /**
     * @param DepartmentRepository $department
     */
    public function __construct(DepartmentRepository $department)
    {
        $this->department = $department;
    }

    /**
     * @param ManageDepartmentRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageDepartmentRequest $request)
    {
        return Datatables::of($this->department->getForDataTable())
         
            ->addColumn('title', function ($department) {
                return $department->title;
            })
            ->addColumn('bonus', function ($department) {
                return $department->bonus;
            })
            ->addColumn('updated_at', function ($department) {
                return Carbon::parse($department->updated_at)->toDateString();
            })
            ->addColumn('actions', function ($department) {
                return $department->action_buttons;
            })
            ->make(true);
    }
}
