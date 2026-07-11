package com.lawsathi.backend.auth.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.UUID;
@Getter
@Setter
@Builder
public class RegisterResponse {
    private UUID userId;
    private String firstName;
    private String email;
}
