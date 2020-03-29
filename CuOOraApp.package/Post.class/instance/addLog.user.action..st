adding
addLog: userIndex user: aUser action: anAction
	"replaces user activityLog"

	|newLog|
	self.ActivityLog removeAtIndex: userIndex.
	newLog := Log user: aUser action: anAction timestamp: DateAndTime now.
	self.ActivityLog add newLog .