/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Komunitas;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author X550VX-NEW
 */
@Entity
@Table(name = "t_kom_perkusi", catalog = "db_kesiswaan", schema = "")
@NamedQueries({
    @NamedQuery(name = "TKomPerkusi.findAll", query = "SELECT t FROM TKomPerkusi t")
    , @NamedQuery(name = "TKomPerkusi.findById", query = "SELECT t FROM TKomPerkusi t WHERE t.id = :id")
    , @NamedQuery(name = "TKomPerkusi.findByNama", query = "SELECT t FROM TKomPerkusi t WHERE t.nama = :nama")
    , @NamedQuery(name = "TKomPerkusi.findByKelas", query = "SELECT t FROM TKomPerkusi t WHERE t.kelas = :kelas")
    , @NamedQuery(name = "TKomPerkusi.findByJurusan", query = "SELECT t FROM TKomPerkusi t WHERE t.jurusan = :jurusan")
    , @NamedQuery(name = "TKomPerkusi.findByNohp", query = "SELECT t FROM TKomPerkusi t WHERE t.nohp = :nohp")
    , @NamedQuery(name = "TKomPerkusi.findByEmail", query = "SELECT t FROM TKomPerkusi t WHERE t.email = :email")
    , @NamedQuery(name = "TKomPerkusi.findByAlamat", query = "SELECT t FROM TKomPerkusi t WHERE t.alamat = :alamat")})
public class TKomPerkusi implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nama")
    private String nama;
    @Basic(optional = false)
    @Column(name = "kelas")
    private String kelas;
    @Basic(optional = false)
    @Column(name = "jurusan")
    private String jurusan;
    @Basic(optional = false)
    @Column(name = "nohp")
    private String nohp;
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "alamat")
    private String alamat;

    public TKomPerkusi() {
    }

    public TKomPerkusi(Integer id) {
        this.id = id;
    }

    public TKomPerkusi(Integer id, String nama, String kelas, String jurusan, String nohp, String email, String alamat) {
        this.id = id;
        this.nama = nama;
        this.kelas = kelas;
        this.jurusan = jurusan;
        this.nohp = nohp;
        this.email = email;
        this.alamat = alamat;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        Integer oldId = this.id;
        this.id = id;
        changeSupport.firePropertyChange("id", oldId, id);
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        String oldNama = this.nama;
        this.nama = nama;
        changeSupport.firePropertyChange("nama", oldNama, nama);
    }

    public String getKelas() {
        return kelas;
    }

    public void setKelas(String kelas) {
        String oldKelas = this.kelas;
        this.kelas = kelas;
        changeSupport.firePropertyChange("kelas", oldKelas, kelas);
    }

    public String getJurusan() {
        return jurusan;
    }

    public void setJurusan(String jurusan) {
        String oldJurusan = this.jurusan;
        this.jurusan = jurusan;
        changeSupport.firePropertyChange("jurusan", oldJurusan, jurusan);
    }

    public String getNohp() {
        return nohp;
    }

    public void setNohp(String nohp) {
        String oldNohp = this.nohp;
        this.nohp = nohp;
        changeSupport.firePropertyChange("nohp", oldNohp, nohp);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        String oldEmail = this.email;
        this.email = email;
        changeSupport.firePropertyChange("email", oldEmail, email);
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        String oldAlamat = this.alamat;
        this.alamat = alamat;
        changeSupport.firePropertyChange("alamat", oldAlamat, alamat);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TKomPerkusi)) {
            return false;
        }
        TKomPerkusi other = (TKomPerkusi) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Komunitas.TKomPerkusi[ id=" + id + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
