adding
addLog: userIndex user: aUser action: anAction
	"replaces user activityLog"
	|newLog|
	activityLog removeIndex: userIndex.
	newLog := Log user: aUser action: anAction timestamp: DateAndTime now.
	activityLog add newLog .