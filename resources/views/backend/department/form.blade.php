<div class="box-body">
    <div class="form-group">
        {{ Form::label('title', trans('validation.attributes.backend.department.title'), ['class' => 'col-lg-2 control-label required']) }}

        <div class="col-lg-10">
            {{ Form::text('title', null, ['class' => 'form-control box-size', 'placeholder' => trans('validation.attributes.backend.department.title'), 'required' => 'required']) }}
        </div><!--col-lg-10-->
    </div><!--form control-->
    
    <div class="form-group">
        {{ Form::label('bonus', trans('validation.attributes.backend.department.bonus'), ['class' => 'col-lg-2 control-label']) }}

        <div class="col-lg-10">
            {{ Form::text('bonus', null, ['class' => 'form-control box-size', 'placeholder' => trans('validation.attributes.backend.department.bonus')]) }}
        </div><!--col-lg-10-->
    </div><!--form control-->

  
</div>
@section('after-scripts')
    <script type="text/javascript">
        Backend.Department.init();
    </script>
@endsection