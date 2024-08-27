package cl.desafiolatam.business;

import cl.desafiolatam.model.Habitacion;

import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {
    private List<Habitacion> habitaciones;

    public HabitacionBusiness() {
        this.habitaciones = new ArrayList<>();
    }

    public void agregarHabitacion(Habitacion habitacion) {
        this.habitaciones.add(habitacion);
    }

    public List<Habitacion> getHabitaciones() {
        return this.habitaciones;
    }

    public Habitacion getHabitacionById(int id) {
        for (Habitacion habitacion : this.habitaciones) {
            if (habitacion.getId() == id) {
                return habitacion;
            }
        }
        return null;
    }
}