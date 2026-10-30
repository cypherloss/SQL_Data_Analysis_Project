SELECT * 
FROM world_layoffs.layoffs;

SELECT MAX(total_laid_off)
FROM world_layoffs.layoffs;

SELECT MAX(percentage_laid_off),  MIN(percentage_laid_off)
FROM world_layoffs.layoffs
WHERE  percentage_laid_off IS NOT NULL;

SELECT *
FROM world_layoffs.layoffs
WHERE  percentage_laid_off = 1;

SELECT *
FROM world_layoffs.layoffs
WHERE  percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;