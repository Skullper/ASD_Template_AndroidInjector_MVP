package ${packageName}.presentation;

import ${packageName}.presentation.${viewName};
import ${packageName}.base_arch.presentation.presenter.BasePresenter;

import javax.inject.Inject;

public class ${presenterName} extends BasePresenter<${viewName}> {
    @Inject
  	public ${presenterName}(${viewName} view){
  		this.view = view;
  	}
}
