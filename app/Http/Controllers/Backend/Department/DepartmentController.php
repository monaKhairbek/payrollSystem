<?php

namespace App\Http\Controllers\Backend\Department;

use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Department\CreateDepartmentRequest;
use App\Http\Requests\Backend\Department\DeleteDepartmentRequest;
use App\Http\Requests\Backend\Department\EditDepartmentRequest;
use App\Http\Requests\Backend\Department\ManageDepartmentRequest;
use App\Http\Requests\Backend\Department\StoreDepartmentRequest;
use App\Http\Requests\Backend\Department\UpdateDepartmentRequest;
use App\Models\Department\Department;
use App\Repositories\Backend\Department\DepartmentRepository;

class DepartmentController extends Controller
{
    protected $department;

    /**
     * @param \App\Repositories\Backend\Department\DepartmentRepository $department
     */
    public function __construct(DepartmentRepository $department)
    {
        $this->department = $department;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \App\Http\Requests\Backend\Department\ManageDepartmentRequest $request
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ManageDepartmentRequest $request)
    {
        return view('backend.department.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param \App\Http\Requests\Backend\Department\CreateDepartmentRequest $request
     *
     * @return \Illuminate\Http\Response
     */
    public function create(CreateDepartmentRequest $request)
    {
     
        return view('backend.department.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \App\Http\Requests\Backend\Department\StoreDepartmentRequest $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDepartmentRequest $request)
    {
        
        $input = $request->all();
        
        $this->department->create($input);

        return redirect()
            ->route('admin.department.index')
            ->with('flash_success', trans('alerts.backend.department.created'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Department\Department                            $department
     * @param \App\Http\Requests\Backend\Department\EditDepartmentRequest $request
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Department $department, EditDepartmentRequest $request)
    {
        return view('backend.department.edit')
            ->with('department', $department);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \App\Http\Requests\Backend\Department\UpdateDepartmentRequest $request
     * @param \App\Models\Department\Department                              $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateDepartmentRequest $request, Department $department)
    {
        $input = $request->all();

        $this->department->update($department, $input);

        return redirect()
            ->route('admin.department.index')
            ->with('flash_success', trans('alerts.backend.department.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Department\Department                              $department
     * @param \App\Http\Requests\Backend\Department\DeleteDepartmentRequest $request
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Department $department, DeleteDepartmentRequest $request)
    {
        $this->department->delete($department);

        return redirect()
            ->route('admin.department.index')
            ->with('flash_success', trans('alerts.backend.department.deleted'));
    }
}
