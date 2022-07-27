#include "patient.h"
#include <QString>
#include "getrand.h"


Patient::Patient(QObject *parent)
	: QObject{parent}
	, m_name("Петров")
{
	timer = new QTimer(this);
	connect(timer, SIGNAL(timeout()), this, SLOT(TimerSlot()));
	timer->start(1000);
}

//*****************************************************
//*******************GETTERS***************************
//*****************************************************

QString Patient::getName()
{
	return m_name;
}

int Patient::getHeart_rate() const
{
	return m_heart_rate;
}

int Patient::getPulse_rate() const
{
	return m_pulse_rate;
}

int Patient::getSpo2() const
{
	return m_spo2;
}

int Patient::getSyst_p() const
{
	return m_syst_p;
}

int Patient::getDiast_p() const
{
	return m_diast_p;
}

int Patient::getMean_p() const
{
	return m_mean_p;
}

double Patient::getTemp1() const
{
	return m_temp1;
}

double Patient::getTemp2() const
{
	return m_temp2;
}

int Patient::getResp_rate() const
{
	return m_resp_rate;
}

int Patient::getEtco2() const
{
	return m_etco2;
}

int Patient::getFico2() const
{
	return m_fico2;
}

//*****************************************************
//*******************SETTERS***************************
//*****************************************************

void Patient::setName(const QString &newName)
{
	if (newName == m_name)
			 return;

	m_name = newName;
	emit nameChanged();
}

void Patient::setHeart_rate(int newHeart_rate)
{
	if (newHeart_rate == m_heart_rate)
			 return;

	m_heart_rate = newHeart_rate;
	emit heart_rateChanged();
}

void Patient::setPulse_rate(int newPulse_rate)
{
	if (newPulse_rate == m_pulse_rate)
			 return;

	m_pulse_rate = newPulse_rate;
	emit pulse_rateChanged();
}

void Patient::setSpo2(int newSpo2)
{
	if (newSpo2 == m_spo2)
			 return;

	m_spo2 = newSpo2;
	emit spo2Changed();
}

void Patient::setSyst_p(int newSyst_p)
{
	if (newSyst_p == m_syst_p)
			 return;

	m_syst_p = newSyst_p;
	emit syst_pChanged();
}

void Patient::setDiast_p(int newDiast_p)
{
	if (newDiast_p == m_diast_p)
			 return;

	m_diast_p = newDiast_p;
	emit diast_pChanged();
}

void Patient::setMean_p(int newMean_p)
{
	if (newMean_p == m_mean_p)
			 return;

	m_mean_p = newMean_p;
	emit mean_pChanged();
}

void Patient::setTemp1(double newTemp1)
{
	if (newTemp1 == m_temp1)
			 return;

	m_temp1 = newTemp1;
	emit temp1Changed();
}

void Patient::setTemp2(double newTemp2)
{
	if (newTemp2 == m_temp2)
			 return;

	m_temp2 = newTemp2;
	emit temp2Changed();
}

void Patient::setResp_rate(int newResp_rate)
{
	if (newResp_rate == m_resp_rate)
			 return;

	m_resp_rate = newResp_rate;
	emit resp_rateChanged();
}

void Patient::setEtco2(int newEtco2)
{
	if (newEtco2 == m_etco2)
			 return;

	m_etco2 = newEtco2;
	emit etco2Changed();
}

void Patient::setFico2(int newFico2)
{
	if (newFico2 == m_fico2)
			 return;

	m_fico2 = newFico2;
	emit fico2Changed();
}

void Patient::generateData()
{
	setHeart_rate(GetRandomNumber(60,80));
	setPulse_rate(GetRandomNumber(60,80));
	setSpo2(GetRandomNumber(90,100));
	setSyst_p(GetRandomNumber(90,140));
	setDiast_p(GetRandomNumber(60,90));
	setMean_p(GetRandomNumber(85,110));
	setTemp1(GetRandomNumberDouble(36.3,37,1));
	setTemp2(GetRandomNumberDouble(36.3,37,1));
	setResp_rate(GetRandomNumber(15,19));
	setEtco2(GetRandomNumber(30,50));
	setFico2(GetRandomNumber(1,5));
}

void Patient::TimerSlot()
{
	generateData();
}



