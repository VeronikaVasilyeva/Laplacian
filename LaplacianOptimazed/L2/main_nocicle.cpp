#include <stdio.h>
#include <stdlib.h>
#include <ctime>
#include <algorithm>

#include <omp.h>

#define STB_IMAGE_IMPLEMENTATION
#define STBI_FAILURE_USERMSG
#include "stb_image.h"

#define TJE_IMPLEMENTATION
#include "tiny_jpeg.h"

const char* path = "../../DataSet/";
//const char* path = "..//DataSet/";
char* extension = ".jpg";
char* extension1 = "-optimized.jpg";

int filter[3][3] = {
	{ 0, -1, 0 },
	{ -1, 5, -1 },
	{ 0, -1, 0 }
};

char* make_file_name(int i, char*& ext)
{
	char name[4];
	sprintf(name, "%d", i);

	char* filename = static_cast<char*>(malloc(5 + strlen(path) + strlen(ext))); /* make space for the new string (should check the return value ...) */

	strcpy(filename, path); /* copy path name into the new var */
	strcat(filename, name); /* add the name */
	strcat(filename, ext); /* add the extension */

	return filename;
}

void laplacian(int width, int height, unsigned char*& resourse, unsigned char*& result)
{
	for (int y = 1; y < height - 1; y++)
	{
		for (int x = 1; x < width - 1; x++)
		{
			//applay_filter(x, y, chnl);
			double color0 = 0;
			double color1 = 0;
			double color2 = 0;

			for (int i = -1; i <= 1; i++)
			{
				for (int j = -1; j <= 1; j++)
				{
					int tmp = 3 * (width *(y + j) + x + i);
					int filter_i = filter[i + 1][j + 1];
					color0 += filter_i * resourse[tmp];		//get_pixel(x + i, y + j, chnl);
					color1 += filter_i * resourse[tmp + 1]; //get_pixel(x + i, y + j, chnl);
					color2 += filter_i * resourse[tmp + 2]; //get_pixel(x + i, y + j, chnl);
				}
			}

			//set_pixel(x, y, chnl, color);
			int tmp = 3 * (width * y + x);
			result[tmp] = static_cast<unsigned char>(max(0.0, min(color0, 255.0)));		//(std::max(0.0, std::min(clr, 255.0)));
			result[tmp + 1] = static_cast<unsigned char>(max(0.0, min(color1, 255.0))); //(std::max(0.0, std::min(clr, 255.0)));
			result[tmp + 2] = static_cast<unsigned char>(max(0.0, min(color2, 255.0))); //(std::max(0.0, std::min(clr, 255.0)));
		}
	}
}

int main(void)
{
	double start_time = clock();

	int width, height, bpp;
	char* file_sourse;
	unsigned char* resourse;
	unsigned char* result ;
	char* file_result;
	int img;

	int num_thread = omp_get_num_procs();
	#pragma omp parallel for num_threads(num_thread) private(img, width, height, bpp, file_sourse, resourse, result, file_result) firstprivate(path, extension, extension1, filter) schedule(guided)
	for (img = 1; img < 123; img++)
	{
		//load img
		width, height, bpp;
		file_sourse = make_file_name(img, extension);
		resourse = stbi_load(file_sourse, &width, &height, &bpp, 3);
		
		//init result img
		result = static_cast<unsigned char*>(calloc(width * height * 3, sizeof(unsigned char)));

		//laplacian();
		laplacian(width, height, resourse, result);

		//write to file
		file_result = make_file_name(img, extension1);
		tje_encode_to_file(file_result, width, height, 3, result);

		stbi_image_free(resourse);
		stbi_image_free(result);
	}

	double end_time = clock(); // конечное время
	double search_time = (end_time - start_time) / 1000;
	//double search_time = (end_time - start_time) / (double) CLOCKS_PER_SEC;

	printf("runtime = \"%lf\" \n", static_cast<double>(search_time)); // время работы программы      
	system("pause");
	
	return 0;
}
