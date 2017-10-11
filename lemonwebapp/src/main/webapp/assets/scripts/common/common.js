/**
 * Created by BOBO on 2017/10/11.
 */


	/**
	 * 处理lemon云平台本地存储
	 * @param key
	 * @param value
	 * @param storageType
	 */
	function setStorage(key,value,storageType) {
		var storage = storageType || sessionStorage;
		var value = JSON.stringify(value);
		storage.setItem(key, value);
	}
	
	function getStorage(key,storageType) {
		var storage = storageType || sessionStorage;
		var valueString = storage.getItem(key);
		if(valueString) {
			var valueObject = JSON.parse(valueString);
			return valueObject;
		}else {
			return null;
		}
	}
