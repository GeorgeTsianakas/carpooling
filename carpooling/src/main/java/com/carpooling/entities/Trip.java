package com.carpooling.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "trip")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Trip.findAll", query = "SELECT t FROM Trip t")
    , @NamedQuery(name = "Trip.findByTripid", query = "SELECT t FROM Trip t WHERE t.tripid = :tripid")
    , @NamedQuery(name = "Trip.findByDate", query = "SELECT t FROM Trip t WHERE t.date = :date")
    , @NamedQuery(name = "Trip.findByOrigin", query = "SELECT t FROM Trip t WHERE t.origin = :origin")
    , @NamedQuery(name = "Trip.findByDestination", query = "SELECT t FROM Trip t WHERE t.destination = :destination")
    , @NamedQuery(name = "Trip.findByTotalseats", query = "SELECT t FROM Trip t WHERE t.totalseats = :totalseats")
    , @NamedQuery(name = "Trip.findByAvailableseats", query = "SELECT t FROM Trip t WHERE t.availableseats = :availableseats")
    , @NamedQuery(name = "Trip.findByCost", query = "SELECT t FROM Trip t WHERE t.cost = :cost")
    , @NamedQuery(name = "Trip.findByCostperseat", query = "SELECT t FROM Trip t WHERE t.costperseat = :costperseat")
    , @NamedQuery(name = "Trip.findByOriginlatitude", query = "SELECT t FROM Trip t WHERE t.originlatitude = :originlatitude")
    , @NamedQuery(name = "Trip.findByOriginlongtitude", query = "SELECT t FROM Trip t WHERE t.originlongtitude = :originlongtitude")
    , @NamedQuery(name = "Trip.findByDestinationlatitude", query = "SELECT t FROM Trip t WHERE t.destinationlatitude = :destinationlatitude")
    , @NamedQuery(name = "Trip.findByDestinationlongtitude", query = "SELECT t FROM Trip t WHERE t.destinationlongtitude = :destinationlongtitude")
    , @NamedQuery(name = "Trip.findByIsactive", query = "SELECT t FROM Trip t WHERE t.isactive = :isactive")})
public class Trip implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "tripid")
    private Integer tripid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "origin")
    private String origin;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "destination")
    private String destination;
    @Basic(optional = false)
    @NotNull
    @Column(name = "totalseats")
    private int totalseats;
    @Basic(optional = false)
    @NotNull
    @Column(name = "availableseats")
    private int availableseats;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "cost")
    private Double cost;
    @Column(name = "costperseat")
    private Double costperseat;
    @Size(max = 45)
    @Column(name = "originlatitude")
    private String originlatitude;
    @Size(max = 45)
    @Column(name = "originlongtitude")
    private String originlongtitude;
    @Size(max = 45)
    @Column(name = "destinationlatitude")
    private String destinationlatitude;
    @Size(max = 45)
    @Column(name = "destinationlongtitude")
    private String destinationlongtitude;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "info")
    private String info;
    @Column(name = "isactive")
    private Short isactive;
    @JoinTable(name = "usertrip", joinColumns = {
        @JoinColumn(name = "tripid", referencedColumnName = "tripid")}, inverseJoinColumns = {
        @JoinColumn(name = "userid", referencedColumnName = "userid")})
    @ManyToMany
    private List<User> userList;
    @JoinColumn(name = "driverid", referencedColumnName = "userid")
    @ManyToOne
    private User driverid;

    public Trip() {
    }

    public Trip(Integer tripid) {
        this.tripid = tripid;
    }

    public Trip(Integer tripid, Date date, String origin, String destination, int totalseats, int availableseats) {
        this.tripid = tripid;
        this.date = date;
        this.origin = origin;
        this.destination = destination;
        this.totalseats = totalseats;
        this.availableseats = availableseats;
    }

    public Integer getTripid() {
        return tripid;
    }

    public void setTripid(Integer tripid) {
        this.tripid = tripid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public int getTotalseats() {
        return totalseats;
    }

    public void setTotalseats(int totalseats) {
        this.totalseats = totalseats;
    }

    public int getAvailableseats() {
        return availableseats;
    }

    public void setAvailableseats(int availableseats) {
        this.availableseats = availableseats;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public Double getCostperseat() {
        return costperseat;
    }

    public void setCostperseat(Double costperseat) {
        this.costperseat = costperseat;
    }

    public String getOriginlatitude() {
        return originlatitude;
    }

    public void setOriginlatitude(String originlatitude) {
        this.originlatitude = originlatitude;
    }

    public String getOriginlongtitude() {
        return originlongtitude;
    }

    public void setOriginlongtitude(String originlongtitude) {
        this.originlongtitude = originlongtitude;
    }

    public String getDestinationlatitude() {
        return destinationlatitude;
    }

    public void setDestinationlatitude(String destinationlatitude) {
        this.destinationlatitude = destinationlatitude;
    }

    public String getDestinationlongtitude() {
        return destinationlongtitude;
    }

    public void setDestinationlongtitude(String destinationlongtitude) {
        this.destinationlongtitude = destinationlongtitude;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Short getIsactive() {
        return isactive;
    }

    public void setIsactive(Short isactive) {
        this.isactive = isactive;
    }

    @XmlTransient
    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public User getDriverid() {
        return driverid;
    }

    public void setDriverid(User driverid) {
        this.driverid = driverid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tripid != null ? tripid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Trip)) {
            return false;
        }
        Trip other = (Trip) object;
        if ((this.tripid == null && other.tripid != null) || (this.tripid != null && !this.tripid.equals(other.tripid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.carpooling.entities.Trip[ tripid=" + tripid + " ]";
    }
    
}
