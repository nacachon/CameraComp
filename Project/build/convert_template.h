#ifndef __CONVERT_TEMPLATE_H__
#define __CONVERT_TEMPLATE_H__

namespace cv {
	class Mat;
}

namespace RTC {
	struct CameraImage;
}

class mwArray;


// Convert RTC::CameraImage to cv::Mat
__declspec(dllexport) cv::Mat operator>>(const RTC::CameraImage src, cv::Mat& dst);
__declspec(dllexport) cv::Mat operator<<(cv::Mat& dst, const RTC::CameraImage src);

// Convert cv::Mat to RTC::CameraImage
__declspec(dllexport) RTC::CameraImage operator>>(const cv::Mat src, RTC::CameraImage& dst);
__declspec(dllexport) RTC::CameraImage operator<<(RTC::CameraImage& dst, const cv::Mat src);


// Convert mwArray to cv::Mat
__declspec(dllexport) cv::Mat operator>>(const mwArray src, cv::Mat& dst);
__declspec(dllexport) cv::Mat operator<<(cv::Mat& dst, const mwArray src);

// Convert cv::Mat to mwArray
__declspec(dllexport) mwArray operator>>(const cv::Mat src, mwArray& dst);
__declspec(dllexport) mwArray operator<<(mwArray& dst, const cv::Mat src);


#endif // __CONVERT_TEMPLATE_H__