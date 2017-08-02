package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

import javax.inject.Inject;

public class ${activityClass} extends BaseActivity implements ${viewName}{

		@Inject
		${presenterName} presenter;

		@Override
		protected int getLayoutId(){
			return R.layout.activity_main;
		}

		@Override
		protected void bindViews(){
		}

}
