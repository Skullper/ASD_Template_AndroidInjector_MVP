package ${packageName}.di.components;

import ${packageName}.${classApplication};
import ${packageName}.di.ModuleBuilder;
import ${packageName}.di.modules.AppModule;

import javax.inject.Singleton;

import dagger.BindsInstance;
import dagger.Component;
<#if isSupportLibUsing>
import dagger.android.support.AndroidSupportInjectionModule;
<#else>
import dagger.android.AndroidInjectionModule;
</#if>

/**
 * Created by pugman on 21.07.17.
 * Contact the developer - sckalper@gmail.com
 * company - A2Lab
 */
@Singleton
@Component(modules = {
    <#if isSupportLibUsing>
		AndroidSupportInjectionModule.class,
    <#else>
    AndroidInjectionModule.class,
    </#if>
		AppModule.class,
		ModuleBuilder.class
})
public interface AppComponent{

	@Component.Builder
	interface Builder {
	    @BindsInstance
	    Builder application(${classApplication} application);
		  AppComponent build();
	}

	void inject(${classApplication} app);
}
