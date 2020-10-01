@ECHO OFF
SETLOCAL
TITLE RUNNING MOUSE ...
REM ====================================================================================================
IF NOT "[%JAVA_HOME%]"=="[]" GOTO START_ME
ECHO JAVA_HOME NOT SET !
GOTO END_ME
REM ====================================================================================================
:START_ME
@ECHO // Mouse Movement Simulation: MMS MouseSnoring > MMS.java
@ECHO import java.awt.MouseInfo; >> MMS.java
@ECHO import java.awt.Point; >> MMS.java
@ECHO import java.awt.Robot; >> MMS.java
@ECHO // START.CLASS >> MMS.java
@ECHO public class MMS { >> MMS.java
@ECHO    public static void main(String[] arrays) throws Exception { >> MMS.java
@ECHO        Robot energy = new Robot(); >> MMS.java
@ECHO        while (true) { >> MMS.java
@ECHO            //System.out.println(); >> MMS.java
@ECHO            energy.delay(1000 * 60); >> MMS.java
@ECHO            Point pointOne = MouseInfo.getPointerInfo().getLocation(); >> MMS.java
@ECHO            Point pointTwo = pointOne; >> MMS.java
@ECHO            energy.mouseMove(pointOne.x + 1, pointOne.y + 1); >> MMS.java
@ECHO            energy.mouseMove(pointOne.x - 1, pointOne.y - 1); >> MMS.java
@ECHO            energy.mouseMove(pointTwo.x, pointOne.y); >> MMS.java
@ECHO            //System.out.printf("MMS.MouseSnoring(%d , %d)",pointOne.x,pointOne.y); >> MMS.java
@ECHO            pointOne = MouseInfo.getPointerInfo().getLocation(); >> MMS.java
@ECHO            System.gc(); >> MMS.java
@ECHO        } >> MMS.java
@ECHO    } >> MMS.java
@ECHO } >> MMS.java
@ECHO // END.CLASS >> MMS.java
REM ====================================================================================================
JAVAC MMS.java
START JAVAW MMS
TASKLIST | FIND "javaw.exe"
ECHO Mouse Movement Simulation @ Mouse Snoring ...
GOTO END_ME
REM ====================================================================================================
:END_ME
PAUSE
DEL "MMS.java"
DEL "MMS.class"
TASKKILL /IM "javaw.exe" /F
ECHO ENOUGH IS ENOUGH ("_") !!!
REM ====================================================================================================
