package com.gfc.beans;

public class SystemInfo {
	private String sysVersion;  
	private String sysName;
	private String sysipAddress;
	private String sysServertime;
	private String sysLicenseExpiry;
	
	public SystemInfo(String version, String name, String  ipAddress, String time, String expiry ) {
		this.sysVersion=version;
		this.sysName=name;
		this.sysipAddress=ipAddress;
		this.sysServertime=time;
		this.sysLicenseExpiry=expiry;  		
	}
	
	public SystemInfo(String version, String name, String sysipAddress) {
		// TODO Auto-generated constructor stub
		this.sysVersion=version;
		this.sysName=name;
		this.sysipAddress=sysipAddress;
	}
	
	public String getSysVersion() {
		return sysVersion;
	}
	public void setSysId(String sysVersion) 
	{
		this.sysVersion=sysVersion;
	}
	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	public String getSysipAddress() {
		return sysipAddress;
	}
	public void setSysipAddress(String sysipAddress) {
		this.sysipAddress = sysipAddress;
	}
	public String getSysServertime() {
		return sysServertime;
	}
	public void setSysServertime(String sysServertime) {
		this.sysServertime = sysServertime;
	}
	public String getSysLicenseExpiry() {
		return sysLicenseExpiry;
	}
	public void setSysLicenseExpiry(String sysLicenseExpiry) {
		this.sysLicenseExpiry = sysLicenseExpiry;
	}  

}
