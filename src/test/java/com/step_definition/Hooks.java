package com.step_definition;

import com.cydeo.utilities.Driver;
import io.cucumber.java.*;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {

//    @Before
//    public void setupScenarios(){
//        System.out.println("It comes from @Before annotation");
//    }
//    @Before(value = "@db")
//    public void setupDBScenarios(){
//        System.out.println("It comes from @Before annotation for database testing");
//    }

    @After
    public void teardownScenario(Scenario scenario){
        //System.out.println("It comes from @After annotation");

        if(scenario.isFailed()) {
            byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot, "image/png", scenario.getName());
        }
        Driver.closeDriver();
    }

//    @BeforeStep
//    public void setupSteps(){
//        System.out.println("It comes from @BeforeStep annotation");
//    }
//
//    @AfterStep
//    public void teardownSteps(){
//        System.out.println("It comes from @AfterStep annotation");
//    }

}
