type stringOrNumber = string | number;

interface IUser {
	age: stringOrNumber;
	name: string;
	action: (msg: string) => void;
}

const generateUser = (user: IUser) => {
	user.action('generate user' + user.name);
	return user;
}
