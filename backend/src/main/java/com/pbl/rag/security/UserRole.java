package com.pbl.rag.security;

/**
 * Role-Based Access Control (RBAC) Enumeration for Academic Personas.
 * 
 * Lead Author: Vaibhav Tank (vaibhav2860)
 * Module: Vector Database & Security Architecture
 */
public enum UserRole {
    ROLE_STUDENT,
    ROLE_TEACHER,
    ROLE_ADMIN;

    public boolean canEvaluate() {
        return this == ROLE_TEACHER || this == ROLE_ADMIN;
    }

    public boolean canIngest() {
        return this == ROLE_TEACHER || this == ROLE_ADMIN;
    }

    public boolean canManageSystem() {
        return this == ROLE_ADMIN;
    }
}
