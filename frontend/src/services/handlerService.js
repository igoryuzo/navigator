import { Subject } from 'rxjs';

const profileChange = new Subject();

export const handleProfileChange = {
	sendData: data => profileChange.next(data),
	receiveData: () => profileChange.asObservable(),
};