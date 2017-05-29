#include <stdio.h>
#include <stdlib.h>
#include <ctime>
#include <algorithm>

#define STB_IMAGE_IMPLEMENTATION
#define STBI_FAILURE_USERMSG
#define STBI_NO_SIMD	//disable simd
#include "stb_image.h"

#define TJE_IMPLEMENTATION
#include "tiny_jpeg.h"

const char* path = "../../DataSet/";
char* extension = ".jpg";
char* extension1 = "-noOptimized.jpg";
const int N = 123;

unsigned char* resourse;
unsigned char* result;
int width, height, bpp;

float filter[3][3] = {
	{ 0, -1, 0 },
	{ -1, 5, -1 },
	{ 0, -1, 0 }
};

double get_pixel(int x, int y, int channel)
{
	return resourse[3 * (width * y + x) + channel];
}

void set_pixel(int x, int y, int channel, double clr)
{
	unsigned char color = static_cast<unsigned char>(max(0.0, min(clr, 255.0)));
	result[3 * (width * y + x) + channel] = color;
}

double applay_filter(int x, int y, int chnl)
{
	double color = 0;

	for (int i = -1; i <= 1; i++)
	{
		for (int j = -1; j <= 1; j++)
		{
			color += filter[i + 1][j + 1] * get_pixel(x + i, y + j, chnl);
		}
	}

	return color;
}

void laplacian()
{
	for (int x = 1; x < width - 1; x++)
	{
		for (int y = 1; y < height - 1; y++)
		{
			for (int chnl = 0; chnl < 3; chnl++)
			{
				double color = applay_filter(x, y, chnl);
				set_pixel(x, y, chnl, color);
			}
		}
	}
}

void make_file_name(int i, char*& filename, char*& ext)
{
	char name[4];
	sprintf(name, "%d", i);

	filename = static_cast<char*>(malloc(strlen(path) + strlen(name) + strlen(ext))); /* make space for the new string (should check the return value ...) */

	strcpy(filename, path); /* copy path name into the new var */
	strcat(filename, name); /* add the name */
	strcat(filename, ext); /* add the extension */
}

int main(void)
{
	double start_time = clock();

	for (int i = 1; i < N; i++)
	{
		char* filename;
		make_file_name(i, filename, extension);

		resourse = stbi_load(filename, &width, &height, &bpp, 3);
		result = static_cast<unsigned char*>(calloc(width * height * 3, sizeof(unsigned char)));

		if (resourse != 0)
		{
			laplacian();

			char* filename1;
			make_file_name(i, filename1, extension1);

			tje_encode_to_file(filename1, width, height, 3, result);

			stbi_image_free(resourse);
			stbi_image_free(result);
		}
		else
		{
			const char* errorLog = stbi_failure_reason();
			fprintf(stderr, "Can't load of the file-image, because: \"%s\"\n", errorLog);
		}
	}

	double end_time = clock(); // конечное время
	double search_time = (end_time - start_time) / 1000;

	printf("runtime = \"%lf\" \n", static_cast<double>(search_time)); // время работы программы                  
	system("pause");

	return 0;
}
