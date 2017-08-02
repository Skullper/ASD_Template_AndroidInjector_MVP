package ${packageName}.di.modules;

import android.content.Context;

import ${packageName}.${classApplication};

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;

/**
 * Created by pugman on 21.07.17.
 * Contact the developer - sckalper@gmail.com
 * company - A2Lab
 */

@Module
public class AppModule{

	@Singleton
	@Provides
	Context providesContext(${classApplication} app){
		  return app.getApplicationContext();
	}

}
