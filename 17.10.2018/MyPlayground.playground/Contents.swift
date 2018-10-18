import Cocoa

var str = "Hello, playground"


var tasks = 2063
let workers = 6
let workerTaskPerDay = 137
let taskEveryDay =  412
var days = 0

while tasks > 0 {
	tasks -= workerTaskPerDay * workers
	tasks += taskEveryDay
	days+=1
}

print(days)
