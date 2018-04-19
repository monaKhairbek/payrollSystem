<?php //dd(getMenuItems());
?>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
<!--            <li class="header">{{ trans('menus.backend.sidebar.general') }}</li>-->

            <li class="{{ active_class(Active::checkUriPattern('admin/dashboard')) }}">
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fa fa-dashboard"></i>
                    <span>{{ trans('menus.backend.sidebar.dashboard') }}</span>
                </a>
            </li>

            <li class="header">{{ trans('menus.backend.sidebar.system') }}</li>

            @permission('view-access-management')
            <li class="{{ active_class(Active::checkUriPattern('admin/access/*')) }} treeview">
                <a href="#">
                    <i class="fa fa-users"></i>
                    <span>{{ trans('menus.backend.access.title') }}</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>

                <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/access/*'), 'menu-open') }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/access/*'), 'display: block;') }}">
                    @permission('view-user-management')
                    <li class="{{ active_class(Active::checkUriPattern('admin/access/user*')) }}">
                        <a href="{{ route('admin.access.user.index') }}">
                            <span>{{ trans('labels.backend.access.users.management') }}</span>
                        </a>
                    </li>
                    @endauth
                    @permission('view-role-management')
                    <li class="{{ active_class(Active::checkUriPattern('admin/access/role*')) }}">
                        <a href="{{ route('admin.access.role.index') }}">
                            <span>{{ trans('labels.backend.access.roles.management') }}</span>
                        </a>
                    </li>
                    @endauth

                </ul>
            </li>
            @endauth

            
            <li class="{{ active_class(Active::checkUriPattern('admin/department*')) }}">
                <a href="{{ route('admin.department.index') }}">
                    <i class="fa fa-file-text"></i>
                    <span>{{ trans('labels.backend.department.title') }}</span>
                </a>
            </li>
           
            @permission('view-email-template')
            <li class="{{ active_class(Active::checkUriPattern('admin/emailtemplates*')) }}">
                <a href="{{ route('admin.emailtemplates.index') }}">
                    <i class="fa fa-envelope"></i>
                    <span>{{ trans('labels.backend.emailtemplates.title') }}</span>
                </a>
            </li>
            @endauth
           


        </ul><!-- /.sidebar-menu -->
    </section><!-- /.sidebar -->
</aside>
