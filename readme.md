# Getting Started

🏥 Medical Clinic Management – CAP Project

Welcome to your SAP CAP project for Medical Clinic Management.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | UI frontend (Fiori Elements app)
`db/` | yDomain model (CDS entities) and sample data
`srv/` | Service definitions and business logic
`readme.md` | Project documentation


This application models a clinic domain including:

- Medical Services (treatments)
- Doctors
- Specialties
- Procedures (service steps)
- Service Status
- Pricing & Currency handling
- Draft-enabled editing with Fiori Elements support


The core business model includes:

- MedicalServices → treatments offered by the clinic
- Doctors → medical professionals providing services
- Specialties → medical domains (Cardiology, Dermatology, etc.)
- Procedures → steps composing a medical service
- ServiceStatus → Available / Limited / Retired

Key features:

- Draft support for MedicalServices and Doctors
- Action handling (addCapacity, changeStatus, etc.)
- Value help for ServiceStatus
- Currency support via sap.common.Currencies

## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start with your domain model, in a CDS file in `db/`

## Learn More

Learn more at <https://cap.cloud.sap>.
