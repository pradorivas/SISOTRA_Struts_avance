package com.llamagas.sisotra.action;

import com.llamagas.sisotra.dao.OrdenTrabajoDao;
import com.llamagas.sisotra.dao.OrdenTrabajoDaoImpl;
import com.llamagas.sisotra.modelo.OrdenTrabajo;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author DENIS
 */
public class ordenTrabajoAction extends ActionSupport{

    private OrdenTrabajo ordenTrabajo = new OrdenTrabajo();
    private String mensaje;
    private List<OrdenTrabajo> listaOT;

    public OrdenTrabajo getOrdenTrabajo() {
        return ordenTrabajo;
    }

    public void setOrdenTrabajo(OrdenTrabajo ordenTrabajo) {
        this.ordenTrabajo = ordenTrabajo;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    @Override
    public String execute() throws Exception{
        OrdenTrabajoDao dao = new OrdenTrabajoDaoImpl();
        listaOT = dao.listarTodo();
        return SUCCESS;
    }

    public String nuevoOrdenTrabajo() throws Exception{
        OrdenTrabajoDao dao = new OrdenTrabajoDaoImpl();
        dao.registrar(ordenTrabajo);
        return SUCCESS;
    }

    public void modificarOrdenTrabajo() {
        OrdenTrabajoDao dao = new OrdenTrabajoDaoImpl();
        dao.actualizar(ordenTrabajo);
    }

    public void eliminarOrdenTrabajo() {
        OrdenTrabajoDao dao = new OrdenTrabajoDaoImpl();
        dao.eliminarSegun(ordenTrabajo);
    }

    public void asignarOrdenTrabajo() {
        OrdenTrabajoDao dao = new OrdenTrabajoDaoImpl();
        dao.Asignar(ordenTrabajo);
    }
    
    public String registroOT() throws Exception{
        return SUCCESS;
    }
}
