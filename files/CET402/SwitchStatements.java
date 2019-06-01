public class SwitchStatements {
	public static void main(String[] args) {
		//The "switch" statement is another way
		//to choose which block of code to run
		
		//Here is the basic structure of a switch statement
		//There is one deliberate error, check the assignment
		//handout for instructions
		int dayOfWeek=2;
		switch(dayOfWeek)
		{
			case 1:
				System.out.println("Sunday");
				break;
			case 2:
				System.out.println("Monday");
				break;
			case 3:
				System.out.println("Tuesday");
				break;
			case 4:
				System.out.println("Wednesday");
				break;
			case 5:
				System.out.println("Thursday");
				//This case is missing a break
			case 6:
				System.out.println("Friday");
				break;
			case 7:
				System.out.println("Saturday");
				//This break is not required
				//but recommended for consistency
				break;    
		}
		
		//We can use Strings in switch statements as well
		//Also, notice the "default" case at the end of the switch block
		//If none of the cases match the variable value this case is run
		String dayString="Friday";
		String ordinalNumber="";
		switch(dayString)
		{
			case "Sunday":
				ordinalNumber="the 1st day of the week.";
				break;
			case "Monday":
				ordinalNumber="the 2nd day of the week.";
				break;
			case "Tuesday":
				ordinalNumber="the 3rd day of the week.";
				break;
			case "Wednesday":
				ordinalNumber="the 4th day of the week.";
				break;
			case "Thursday":
				ordinalNumber="the 5th day of the week.";
				break;
			case "Friday":
				ordinalNumber="the 6th day of the week.";
				break;
			case "Saturday":
				ordinalNumber="the 7th day of the week.";
				break;
			default:
				ordinalNumber="not a day of the week.";
		}
		System.out.println(dayString+" is "+ordinalNumber);
		
		
		String dayType="";
		switch(dayString)
		{
			case "Sunday":
			case "Saturday":
				dayType="weekend";
				break;
			case "Monday":
			case "Tuesday":
			case "Wednesday":
			case "Thursday":
			case "Friday":
				dayType="weekday";
				break;
			default:
				dayType="bad day.";
		}
		System.out.println(dayString+" is a "+dayType);
		
		
		//Your turn.  Write a switch statement to print
		//how many days are in a month to the console
		String monthString="February";
		//Write your switch statement here
				
	}
}
