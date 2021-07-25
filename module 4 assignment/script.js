var names = new Array();
names[0] = "Yaakov";
names[1] = "John";
names[2] = "Joy";
names[3] = "jai";
names[4] = "lake";
names[5] = "flower";
names[6] = "Jim";
names[7] = "jam";
names[8] = "womn";
names[9] = "JEE";

	for (var i = 0; i < names.length; i++){
		if(names[i].charAt(0)==='J' || names[i].charAt(0) === 'j'){
			console.log("Goodbye " + names[i])
		}
		else{
			console.log("Hello "+names[i])
		}
	}