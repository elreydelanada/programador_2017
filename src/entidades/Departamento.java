/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author alumno
 */
public class Departamento {
    private int id;
    private String descripcion;
    private int id_provincia;
    private int id_departamento;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the id_provincia
     */
    public int getId_provincia() {
        return id_provincia;
    }

    /**
     * @param id_provincia the id_provincia to set
     */
    public void setId_provincia(int id_provincia) {
        this.id_provincia = id_provincia;
    }

    /**
     * @return the id_departamento
     */
    public int getId_departamento() {
        return id_departamento;
    }

    /**
     * @param id_departamento the id_departamento to set
     */
    public void setId_departamento(int id_departamento) {
        this.id_departamento = id_departamento;
    }

    @Override
    public String toString() {
        return this.descripcion;
    }
    
    
}
