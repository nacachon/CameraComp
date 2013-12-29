// -*- C++ -*-
/*!
* @file  CameraComp.cpp
* @brief ${rtcParam.description}
* @date $Date$
*
* $Id$
*/

#include "CameraComp.h"
#include "convert_template.h"

// Module specification
// <rtc-template block="module_spec">
static const char* cameracomp_spec[] =
{
	"implementation_id", "CameraComp",
	"type_name",         "CameraComp",
	"description",       "${rtcParam.description}",
	"version",           "1.0.0",
	"vendor",            "Nakamura",
	"category",          "Category",
	"activity_type",     "PERIODIC",
	"kind",              "DataFlowComponent",
	"max_instance",      "1",
	"language",          "C++",
	"lang_type",         "compile",
	// Configuration variables
	"conf.default.Width", "640",
	"conf.default.Height", "480",
	// Widget
	"conf.__widget__.Width", "text",
	"conf.__widget__.Height", "text",
	// Constraints
	""
};
// </rtc-template>

/*!
* @brief constructor
* @param manager Maneger Object
*/
CameraComp::CameraComp(RTC::Manager* manager)
	// <rtc-template block="initializer">
	: RTC::DataFlowComponentBase(manager),
	m_outOut("out", m_out)

	// </rtc-template>
{
}

/*!
* @brief destructor
*/
CameraComp::~CameraComp()
{
}



RTC::ReturnCode_t CameraComp::onInitialize()
{
	// Registration: InPort/OutPort/Service
	// <rtc-template block="registration">
	// Set InPort buffers

	// Set OutPort buffer
	addOutPort("out", m_outOut);

	// Set service provider to Ports

	// Set service consumers to Ports

	// Set CORBA Service Ports

	// </rtc-template>

	// <rtc-template block="bind_config">
	// Bind variables and configuration variable
	bindParameter("Width", m_width, "640");
	bindParameter("Height", m_height, "480");
	// </rtc-template>

	return RTC::RTC_OK;
}

/*
RTC::ReturnCode_t CameraComp::onFinalize()
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t CameraComp::onStartup(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t CameraComp::onShutdown(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/


RTC::ReturnCode_t CameraComp::onActivated(RTC::UniqueId ec_id)
{
	w = 0;
	h = 0;
	
	cap = new cv::VideoCapture(0);
	if(cap == NULL){
		std::cerr << "onActivated: Memory allocation error" << std::endl;
		return RTC::RTC_ERROR;
	}

	return RTC::RTC_OK;
}


RTC::ReturnCode_t CameraComp::onDeactivated(RTC::UniqueId ec_id)
{
	if(cap != NULL){
		delete cap;
		cap = NULL;
	}

	return RTC::RTC_OK;
}


RTC::ReturnCode_t CameraComp::onExecute(RTC::UniqueId ec_id)
{
	if(w != m_width){
		cap->set(CV_CAP_PROP_FRAME_WIDTH, m_width);
		w = m_width;
	}
	if(h != m_height){
		cap->set(CV_CAP_PROP_FRAME_HEIGHT, m_height);
		h = m_height;
	}

	if(!cap->isOpened()){
		std::cerr << "Camera device is not opened" << std::endl;
		return RTC::RTC_ERROR;
	}


	// ƒJƒƒ‰‚©‚ç‰æ‘œ‚ÌŽæ‚èž‚Ý
	static cv::Mat out;
	*cap >> out;
	out >> m_out;
	m_outOut.write();

	return RTC::RTC_OK;
}

/*
RTC::ReturnCode_t CameraComp::onAborting(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t CameraComp::onError(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t CameraComp::onReset(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t CameraComp::onStateUpdate(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t CameraComp::onRateChanged(RTC::UniqueId ec_id)
{
return RTC::RTC_OK;
}
*/



extern "C"
{

	void CameraCompInit(RTC::Manager* manager)
	{
		coil::Properties profile(cameracomp_spec);
		manager->registerFactory(profile,
			RTC::Create<CameraComp>,
			RTC::Delete<CameraComp>);
	}

};


