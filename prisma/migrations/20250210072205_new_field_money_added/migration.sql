/*
  Warnings:

  - You are about to drop the column `payData` on the `BillSale` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "BillSale" DROP COLUMN "payData",
ADD COLUMN     "payDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "BillSaleDetail" ADD COLUMN     "price" INTEGER;
