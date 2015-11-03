package com.ust.utility;

import com.ust.model.AssetBean;

public class BeanFactory {
	
	public static AssetBean getFactoryBean(String itemId, String itemName) {
		
		AssetBean asset = new AssetBean();
		asset.setLastName(itemId);
		asset.setFirstName(itemName);
		
		return asset;
	}
}
