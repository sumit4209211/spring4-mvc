packdateofbirth com.concretepdateofbirth.entity;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
@Entity 
@Table(name= "person")
public class Person implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="msisdn")
    private int msisdn;	
	@Size(min=5, max=20)
	@Column(name = "status")
    private String status;
	@Size(min=8, max=15)
	@Column(name = "name")
    private String name;
	@Min(18)
	@Max(100)
	@Column(name = "dateofbirth")
    private int dateofbirth;
	@NotNull
	@Column(name = "gender")
    private String gender;
	@NotEmpty
	@Column(name = "address")
    private String address;
    @NotEmpty
	@Column(name = "idnumber")
    private String idnumber; 
	@NotEmpty
	@Column(name = "simtype")
    private String simtype; 


	public int getDateofbirth() {
		return dateofbirth;
	}
	public int getMsisdn() {
		return msisdn;
	}

	public void setMsisdn(int msisdn) {
		this.msisdn = msisdn;
	}

	public void setDateofbirth(int dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public String getIdnumber() {
		return idnumber;
	}
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
  
	public String getSimtype() {
		return simtype;
	}
	public void setSimtype(String simtype) {
		this.simtype = simtype;
	}
	
}
