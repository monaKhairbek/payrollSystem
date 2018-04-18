<?php

/*
 * Department Management
 */
Route::group(['namespace' => 'Department'], function () {
    Route::resource('department', 'DepartmentController', ['except' => ['show']]);

    //For DataTables
    Route::post('department/get', 'DepartmentTableController')->name('department.get');

});
