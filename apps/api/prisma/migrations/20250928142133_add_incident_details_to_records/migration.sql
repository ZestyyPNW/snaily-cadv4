-- AlterEnum
ALTER TYPE "RecordType" ADD VALUE 'INCIDENT_REPORT';

-- AlterTable
ALTER TABLE "Record" ADD COLUMN     "incidentDetails" TEXT;
