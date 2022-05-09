type stringOrNumber = string | number;
type z = number;
type a = number;
type b = number | Function;

const a: a = 1;
const fnA = (a: number, z: boolean): string => {

	return '';
}

type stringOrBoolean = string | boolean;

const p = new Promise((resolve, reject) => {
	setTimeout(() => resolve(1))
})

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
	name: '周瑜',
	action: null
})

generateUser({ age: 18, name: '赵云', action: () => {} })
