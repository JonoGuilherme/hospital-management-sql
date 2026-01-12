-- Index for CPF search
CREATE INDEX idx_cpf ON Patient(cpf);

-- Index for doctor specialty
CREATE INDEX idx_specialty ON Doctor(specialty);

-- Index for billing date
CREATE INDEX idx_billing_date ON Billing(billing_date);

-- Index for service type
CREATE INDEX idx_service_type ON Billing(service_type);
