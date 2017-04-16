package com.code.webapp.repository;

import org.springframework.data.repository.CrudRepository;

import com.code.webapp.domain.Employee;


public interface EmployeeRepository extends CrudRepository<Employee, String>{}
