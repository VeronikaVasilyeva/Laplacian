#include "opencv2/core.hpp"
#include "opencv2/highgui.hpp"
#include "ctime"

using namespace cv;
using namespace std;

#include <stdlib.h>
#include <stdio.h>

const char* path = "../../DataSet/";
char* extension = ".jpg";
char* extension1 = "-OpenCV.jpg";
const int N = 91;

void make_file_name(int i, char*& filename, char*& ext)
{
	char name[3];
	sprintf(name, "%d", i);

	filename = static_cast<char*>(malloc(strlen(path) + strlen(name) + strlen(ext))); /* make space for the new string (should check the return value ...) */

	strcpy(filename, path); /* copy path name into the new var */
	strcat(filename, name); /* add the name */
	strcat(filename, ext); /* add the extension */
}

int main(int argc, char* argv[])
{
	float kernel[3][3] = {
		{ 0, -1, 0 },
		{ -1, 5, -1 },
		{ 0, -1, 0 }
	};

	CvMat kernel_matrix = cvMat(3, 3, CV_32FC1, kernel);

	double start_time = clock();

	for (auto i = 1; i < N; i++) {

		char* filename;
		make_file_name(i, filename, extension);

		IplImage* image = nullptr;
		image = cvLoadImage(filename, 1); 		// получаем картинку
		assert(image != nullptr);

		IplImage* dst = nullptr;
		dst = cvCloneImage(image);				// клонируем картинку 

		cvFilter2D(image, dst, &kernel_matrix, cvPoint(-1, -1));	// накладываем фильтр

		char* filename1;
		make_file_name(i, filename1, extension1);

		cvSaveImage(filename1, dst);

		cvReleaseImage(&image);			// освобождаем ресурсы
		cvReleaseImage(&dst);			// освобождаем ресурсы
	}

	double end_time = clock(); // конечное время
	auto search_time = (end_time - start_time) / 1000;

	printf("runtime = \"%lf\" \n", search_time); // время работы программы                  
	system("pause");

	return 0;
}