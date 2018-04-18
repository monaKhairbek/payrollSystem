<?php

namespace App\Models\Department\Traits\Attribute;

/**
 * Class DepartmentAttribute.
 */
trait DepartmentAttribute
{
    /**
     * @return string
     */
    public function getActionButtonsAttribute()
    {
        return '<div class="btn-group action-btn">'.
                $this->getEditButtonAttribute('edit-department', 'admin.department.edit').
                $this->getDeleteButtonAttribute('delete-department', 'admin.department.destroy').
                '</div>';
    }
}
