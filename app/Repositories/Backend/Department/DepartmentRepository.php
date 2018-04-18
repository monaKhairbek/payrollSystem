<?php

namespace App\Repositories\Backend\Department;

use App\Exceptions\GeneralException;
use App\Models\Department\Department;
use App\Repositories\BaseRepository;

/**
 * Class DepartmentRepository.
 */
class DepartmentRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Department::class;

    /**
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()
            ->select([
                config('module.department.table').'.id',
                config('module.department.table').'.title',
                config('module.department.table').'.bonus',
                config('module.department.table').'.created_at',
            ]);
    }

    /**
     * @param array $input
     *
     * @throws \App\Exceptions\GeneralException
     *
     * @return bool
     */
    public function create(array $input)
    {

        //If department saved successfully, then return true
        if (Department::create($input)) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.department.create_error'));
    }

    /**
     * @param \App\Models\Department\Department $department
     * @param array                $input
     *
     * @throws \App\Exceptions\GeneralException
     *
     * return bool
     */
    public function update(Department $department, array $input)
    {
        //If department updated successfully
        if ($department->update($input)) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.department.update_error'));
    }

    /**
     * @param \App\Models\Department\Department $department
     *
     * @throws \App\Exceptions\GeneralException
     *
     * @return bool
     */
    public function delete(Department $department)
    {
        if ($department->delete()) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.department.delete_error'));
    }
}
