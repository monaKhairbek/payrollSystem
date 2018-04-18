<?php

namespace App\Models\Department;

use App\Models\BaseModel;
use App\Models\Department\Traits\Attribute\DepartmentAttribute;
use App\Models\ModelTrait;
use Illuminate\Database\Eloquent\SoftDeletes;

class Department extends BaseModel
{
    use ModelTrait,
        SoftDeletes,
        DepartmentAttribute {
            // DepartmentAttribute::getEditButtonAttribute insteadof ModelTrait;
        }

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['title', 'bonus'];

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->table = config('module.department.table');
    }
}
