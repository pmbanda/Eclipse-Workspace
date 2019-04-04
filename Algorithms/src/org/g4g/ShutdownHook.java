package org.g4g;

public class ShutdownHook {

	public static void main(String[] args) {
		
		Runtime.getRuntime().addShutdownHook(new Thread() 
	    { 
	      public void run() 
	      { 
	        System.out.println("Shutdown Hook is running !"); 
	        try {
	        	
				new Thread();
				Thread.sleep(5000);
				System.out.println("Terminate Hook....");
				
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	      } 
	    }); 
	    System.out.println("Application Terminating ..."); 
	    
	    System.out.println("Calling System.exit()....");
	    //System.exit(0);
	}

}
