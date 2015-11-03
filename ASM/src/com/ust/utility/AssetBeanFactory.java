package com.ust.utility;

import com.ust.model.AssetBean;

public class AssetBeanFactory {
	
	public static AssetBean getFactoryBean(String itemId, String itemName) {
		
		AssetBean asset = new AssetBean();
		asset.setItemId(itemId);
		asset.setItemName(itemName);
		
		return asset;
	}
}
