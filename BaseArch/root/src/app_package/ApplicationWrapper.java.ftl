package ${packageName};

import android.app.Activity;
import android.app.Application;

import ${packageName}.di.components.DaggerAppComponent;

import javax.inject.Inject;

import dagger.android.DispatchingAndroidInjector;
import dagger.android.HasActivityInjector;

/**
 * Created by pugman on 21.07.17.
 * Contact the developer - sckalper@gmail.com
 * company - A2Lab
 */
public class ${classApplication} extends Application implements HasActivityInjector{

  	@Inject
  	DispatchingAndroidInjector<Activity> androidInjector;

    @Override
    public void onCreate(){
        super.onCreate();
        buildAppComponent();
    }

    private void buildAppComponent(){
        DaggerAppComponent
            .builder()
            .application(this)
            .build()
            .inject(this);
    }

    @Override
    public DispatchingAndroidInjector<Activity> activityInjector(){
        return androidInjector;
    }

}
