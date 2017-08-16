package cn.lyl.ssm.po;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * <p>Title:Lxr</p>
 * <p>Description: 联系人</p>
 * @author 李银龙
 *		2017年7月20日
 *		下午6:56:16
 */
@Component(value="lxr")
@Scope(value="prototype")
public class Lxr {
	private Integer id;//序号
	private Integer yhbh;//用户编号
	private String lxrxm;//联系人姓名
	private String lxrdh;//联系人电话
	private String lxrdz;//联系人地址
	private Integer kz1;
	private Integer kz2;
	private String kz3;
	private String kz4;
	private String kz5;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLxrxm() {
		return lxrxm;
	}
	public void setLxrxm(String lxrxm) {
		this.lxrxm = lxrxm;
	}
	public String getLxrdh() {
		return lxrdh;
	}
	public void setLxrdh(String lxrdh) {
		this.lxrdh = lxrdh;
	}
	public String getLxrdz() {
		return lxrdz;
	}
	public void setLxrdz(String lxrdz) {
		this.lxrdz = lxrdz;
	}
	public Integer getKz1() {
		return kz1;
	}
	public void setKz1(Integer kz1) {
		this.kz1 = kz1;
	}
	public Integer getKz2() {
		return kz2;
	}
	public void setKz2(Integer kz2) {
		this.kz2 = kz2;
	}
	public String getKz3() {
		return kz3;
	}
	public void setKz3(String kz3) {
		this.kz3 = kz3;
	}
	public String getKz4() {
		return kz4;
	}
	public void setKz4(String kz4) {
		this.kz4 = kz4;
	}
	public String getKz5() {
		return kz5;
	}
	public void setKz5(String kz5) {
		this.kz5 = kz5;
	}
	public Integer getYhbh() {
		return yhbh;
	}
	public void setYhbh(Integer yhbh) {
		this.yhbh = yhbh;
	}
	
}
