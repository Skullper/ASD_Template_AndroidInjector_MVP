package ${packageName}.base_arch.activity;

import android.os.Bundle;
import android.support.annotation.Nullable;
<#if isSupportLibUsing>
import android.support.v4.app.Fragment;
<#else>
import android.app.Fragment;
</#if>
import android.support.v7.app.AppCompatActivity;

import javax.inject.Inject;

import dagger.android.AndroidInjection;
import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
<#if isSupportLibUsing>
import dagger.android.support.HasSupportFragmentInjector;
<#else>
import dagger.android.HasFragmentInjector;
</#if>

/*
  Created by pugman on 24.07.17.
  Contact the developer - sckalper@gmail.com
  company - A2Lab
 */

/**
 * Class designed as parent for all Activities created in project.
 */
<#if isSupportLibUsing>
public abstract class ${activityClass} extends ${superClass} implements HasSupportFragmentInjector{
<#else>
public abstract class ${activityClass} extends ${superClass} implements HasFragmentInjector{
</#if>

		@Inject
    <#if isSupportLibUsing>
		DispatchingAndroidInjector<Fragment> supportFragmentInjector;
    <#else>
    DispatchingAndroidInjector<Fragment> fragmentInjector;
    </#if>

		/**
		 * @return resourceId of layout which designed for current activity
		 */
		protected abstract int getLayoutId();

		/**
		 * Initialize all views here(e.g. ButterKnife.bind(this)).
		 * This method do the same as onCreate()
		 */
		protected abstract void bindViews();

		@Override
		protected void onCreate(@Nullable Bundle savedInstanceState){
				AndroidInjection.inject(this);
				super.onCreate(savedInstanceState);
				setContentView(getLayoutId());
				bindViews();
		}

		@Override
    <#if isSupportLibUsing>
		public AndroidInjector<Fragment> supportFragmentInjector(){
				return supportFragmentInjector;
		}
    <#else>
    public AndroidInjector<Fragment> fragmentInjector(){
				return fragmentInjector;
		}
    </#if>

}
