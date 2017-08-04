package ${packageName}.fragment;

import android.os.Bundle;
import android.view.View;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${packageName}.fragment.presentation.${presenterName};
import ${packageName}.fragment.presentation.${viewName};

import javax.inject.Inject;

public class ${className} extends BaseFragment<${activityName}> implements ${viewName}{

  @Inject
  ${presenterName} presenter;

	public static ${className} newInstance(){
		Bundle args = new Bundle();
		${className} fragment = new ${className}();
		fragment.setArguments(args);
		return fragment;
	}

  @Override
  protected ${activityName} bindActivity(){
    return (${activityName}) getActivity();
  }

  @Override
  protected int getLayoutId(){
    <#if includeLayout>
    return R.layout.${fragmentName};
    </#if>
  }

  @Override
  protected void bindViews(View rootView){
  }
}
