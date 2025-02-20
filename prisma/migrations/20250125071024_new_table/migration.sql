-- CreateTable
CREATE TABLE "Tasts" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "remark" TEXT,
    "status" TEXT NOT NULL DEFAULT 'use',
    "foodTypeId" INTEGER NOT NULL,

    CONSTRAINT "Tasts_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Tasts" ADD CONSTRAINT "Tasts_foodTypeId_fkey" FOREIGN KEY ("foodTypeId") REFERENCES "FoodType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
