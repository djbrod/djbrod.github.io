public class FirstMethods {
	public static void main(String[] args) {
		//Code reuse is important
		//Repetitive code should be avoided
		//Methods (aka functions in other languages)
		//help to reuse code
		
		//For example, let's find the prime numbers below 10
		//a prime number is a number that is only divisible 
		//by 1 and itself.  Here is some code that finds
		//all primes below 10
		boolean isPrime=true;
		int i=2;
		for(int j=2;j<i;j++)
			if((i%j)==0)
				isPrime=false;
		if(isPrime)
			System.out.println(i+" is a prime number.");

		isPrime=true;
		i=3;
		for(int j=2;j<i;j++)
			if((i%j)==0)
				isPrime=false;
		if(isPrime)
			System.out.println(i+" is a prime number.");

		isPrime=true;
		i=4;
		for(int j=2;j<i;j++)
			if((i%j)==0)
				isPrime=false;
		if(isPrime)
			System.out.println(i+" is a prime number.");
		
		isPrime=true;
		i=5;
		for(int j=2;j<i;j++)
			if((i%j)==0)
				isPrime=false;
		if(isPrime)
			System.out.println(i+" is a prime number.");
		
		isPrime=true;
		i=6;
		for(int j=2;j<i;j++)
			if((i%j)==0)
				isPrime=false;
		if(isPrime)
			System.out.println(i+" is a prime number.");
		
		isPrime=true;
		i=7;
		for(int j=2;j<i;j++)
			if((i%j)==0)
				isPrime=false;
		if(isPrime)
			System.out.println(i+" is a prime number.");
		
		isPrime=true;
		i=8;
		for(int j=2;j<i;j++)
			if((i%j)==0)
				isPrime=false;
		if(isPrime)
			System.out.println(i+" is a prime number.");
		
		isPrime=true;
		i=9;
		for(int j=2;j<i;j++)
			if((i%j)==0)
				isPrime=false;
		if(isPrime)
			System.out.println(i+" is a prime number.");
		
		//Look through the code above
		//Hopefully you recognize that it is very
		//repetitive.  With some small modifications
		//the code can be rewritten as a method.
		//Look below the main method to find the isPrimeMethod()
		
		//Using a for loop and a method make the code much 
		//more concise and readable
		System.out.println("\nNow from the method:");
		for(i=2;i<10;i++)
			if(isPrimeMethod(i))
				System.out.println(i+" is a prime number.");
		//If any changes to the method are necessary
		//you can make them in a single place.
		//if you need to determine primes beyond
		//those found in this example a simple call to the  
		//method can be made.
		
	}
	
	public static boolean isPrimeMethod(int input)
	{
		//This method performs the same
		//action as the code from the main method
		boolean isPrime=true;
		for(int j=2;j<input;j++)
			if((input%j)==0)
				isPrime=false;
		return isPrime;
		
		//Notice the following things common to all methods
		
		//Return type - in this case the method will return a 
		//boolean value.  Other variable types can be used
		//If the method will not return a value, the void
		//type can be used
		
		//method name - This is the keyword that other methods
		//will use to invoke this method
		
		//Parameters - the list of parameters define what values
		//are passed into the method.  In this case a single 
		//integer is used to indicate the value being tested
		//as a prime.
		
		//return statement - This determines what data gets
		//passed out of the method to the code that called it.
		//unless the return type is void, the method must include
		//a return statement
	}
}
