#ifndef PATIENT_H
#define PATIENT_H

#include <QObject>
#include <QString>
#include <qqml.h>
#include <QTimer>

class Patient : public QObject
{
	Q_OBJECT
	Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged)
	Q_PROPERTY(int heart_rate READ getHeart_rate WRITE setHeart_rate NOTIFY heart_rateChanged)
	Q_PROPERTY(int pulse_rate READ getPulse_rate WRITE setPulse_rate NOTIFY pulse_rateChanged)
	Q_PROPERTY(int spo2 READ getSpo2 WRITE setSpo2 NOTIFY spo2Changed)
	Q_PROPERTY(int syst_p READ getSyst_p WRITE setSyst_p NOTIFY syst_pChanged)
	Q_PROPERTY(int diast_p READ getDiast_p WRITE setDiast_p NOTIFY diast_pChanged)
	Q_PROPERTY(int mean_p READ getMean_p WRITE setMean_p NOTIFY mean_pChanged)
	Q_PROPERTY(double temp1 READ getTemp1 WRITE setTemp1 NOTIFY temp1Changed)
	Q_PROPERTY(double temp2 READ getTemp2 WRITE setTemp2 NOTIFY temp2Changed)
	Q_PROPERTY(int resp_rate READ getResp_rate WRITE setResp_rate NOTIFY resp_rateChanged)
	Q_PROPERTY(int etco2 READ getEtco2 WRITE setEtco2 NOTIFY etco2Changed)
	Q_PROPERTY(int fico2 READ getFico2 WRITE setFico2 NOTIFY fico2Changed)
	QML_ELEMENT

public:
	explicit Patient(QObject *parent = nullptr);

	QString getName();
	int getHeart_rate() const;
	int getPulse_rate() const;
	int getSpo2() const;
	int getSyst_p() const;
	int getDiast_p() const;
	int getMean_p() const;
	double getTemp1() const;
	double getTemp2() const;
	int getResp_rate() const;
	int getEtco2() const;
	int getFico2() const;

	void setName(const QString &newName);
	void setHeart_rate(int newHeart_rate);
	void setPulse_rate(int newPulse_rate);
	void setSpo2(int newSpo2);
	void setSyst_p(int newSyst_p);
	void setDiast_p(int newDiast_p);
	void setMean_p(int newMean_p);
	void setTemp1(double newTemp1);
	void setTemp2(double newTemp2);
	void setResp_rate(int newResp_rate);
	void setEtco2(int newEtco2);
	void setFico2(int newFico2);

	void generateData();

private:

	QString m_name;
	int m_heart_rate;
	int m_pulse_rate;
	int m_spo2;
	int m_syst_p;
	int m_diast_p;
	int m_mean_p;
	double m_temp1;
	double m_temp2;
	int m_resp_rate;
	int m_etco2;
	int m_fico2;

	QTimer *timer;

private slots:
	void TimerSlot();

signals:
	void nameChanged();
	void heart_rateChanged();
	void pulse_rateChanged();
	void spo2Changed();
	void syst_pChanged();
	void diast_pChanged();
	void mean_pChanged();
	void temp1Changed();
	void temp2Changed();
	void resp_rateChanged();
	void etco2Changed();
	void fico2Changed();
};

#endif // PATIENT_H
