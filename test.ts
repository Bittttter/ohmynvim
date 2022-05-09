type stringOrNumber = string | number;

type stringOrBoolean = string | boolean;

interface IUser {
	age: stringOrNumber;
	name: string;
	action: (msg: string) => void;
}

const generateUser = (user: IUser) => {
	user.action('generate user' + user.name);
	return user;
}


generateUser({
	age: 18,
	name: 1,
	action: null
})

generateUser({ })
