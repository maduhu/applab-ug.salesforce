global class ScheduledIconLocationsFeedUpdate implements Schedulable{
// CronExpression = Seconds Minutes Hours Day_of_month Month Day_of_week optional_year
	public static String cronExpression = '0 0 4 * * ?'; // run every day at 4am
	//public static String cronExpression = '0 0 1-23 * * ?'; // run every hour - for testing purposes only
	global void execute(SchedulableContext sc) {
		
		// Scheduled Apex must call a method annotated with @future in order to do callouts
		IconLocationsFeedUpdater.updateIconLocations();
		ErrorLog.flush();
	}
}