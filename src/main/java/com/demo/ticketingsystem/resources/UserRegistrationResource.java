package com.demo.ticketingsystem.resources;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Response;

/**
 *
 * @author 
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */



import com.demo.ticketingsystem.*;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.*;
import jakarta.ws.rs.ApplicationPath;
import jakarta.ws.rs.core.Application;
import java.util.List;

@ApplicationPath("/users")
public class UserRegistrationResource extends Application {
    @Context
    UriInfo uriInfo;
    @Context
    Request request;

    public UserRegistrationResource() {
        super();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<UserRegistrationForm> getUsers() {
        return UserRegistrationDao.getInstance().findAll();
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getUser(@PathParam("id") Long id) {
        UserRegistrationForm user = UserRegistrationDao.getInstance().findById(id);
        if (user != null) {
            return Response.status(200).entity(user).build();
        } else {
            return Response.status(404).entity("User not found.").build();
        }
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response createUser(UserRegistrationForm user) {
        if (UserRegistrationDao.getInstance().findByEmail(user.getEmail()) == null) {
            UserRegistrationDao.getInstance().save(user);
            return Response.status(201).entity("User created: " + user.getId()).build();
        } else {
            return Response.status(409).entity("User with this email already exists.").build();
        }
    }

    @PUT
    @Path("/{id}")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateUser(@PathParam("id") Long id, UserRegistrationForm user) {
        UserRegistrationForm existingUser = UserRegistrationDao.getInstance().findById(id);
        if (existingUser != null) {
            user.setId(id);
            UserRegistrationDao.getInstance().merge(user);
            return Response.status(204).entity("User updated: " + user.getId()).build();
        } else {
            return Response.status(404).entity("User not found.").build();
        }
    }

    @DELETE
    @Path("/{id}")
    public Response deleteUser(@PathParam("id") Long id) {
        UserRegistrationForm user = UserRegistrationDao.getInstance().findById(id);
        if (user != null) {
            UserRegistrationDao.getInstance().delete(user);
            return Response.status(204).entity("User deleted: " + user.getId()).build();
        } else {
            return Response.status(404).entity("User not found.").build();
        }
    }
}