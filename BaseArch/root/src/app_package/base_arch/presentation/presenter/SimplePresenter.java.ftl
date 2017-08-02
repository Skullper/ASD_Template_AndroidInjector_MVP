package ${packageName}.base_arch.presentation.presenter;

import javax.annotation.ParametersAreNullableByDefault;
import ${packageName}.base_arch.presentation.view.BaseView;

/*
  Created by pugman on 01.08.17.
  Contact the developer - sckalper@gmail.com
  company - A2Lab

 */

/**
 * Class designed as parent for all created Presenter classes in project.
 *
 * @param <T> a view which will be used in current Presenter class. Must be initialized in
 *            constructor
 */
public abstract class ${presenterName}<T extends ${viewName}> {

	/**
	 * Used to call methods in your Activity class
	 */
	@ParametersAreNullableByDefault
	protected T view;
}
