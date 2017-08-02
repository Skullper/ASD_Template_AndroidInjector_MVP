package ${packageName}.presentation;

import javax.inject.Inject;

public class ${presenterName} extends BasePresenter<${viewName}> {
    @Inject
  	public ${presenterName}(${viewName} view){
  		this.view = view;
  	}
}
