.class public Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;
.super Ljava/lang/Object;
.source "GnssLocationProviderSec.java"


# instance fields
.field public mConfigMap:Ljava/util/HashMap;

.field public mPhone:Landroid/telephony/TelephonyManager;

.field public mSimOperator:Ljava/lang/String;

.field public mSlotId:I

.field public mSubId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/HashMap;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSubId:I

    const/4 p1, -0x1

    .line 1496
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSlotId:I

    .line 1497
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSimOperator:Ljava/lang/String;

    .line 1498
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mConfigMap:Ljava/util/HashMap;

    .line 1499
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mPhone:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public getPhoneFromSimInfo()Landroid/telephony/TelephonyManager;
    .locals 0

    .line 1477
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mPhone:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public getSimOperatorFromSimInfo()Ljava/lang/String;
    .locals 0

    .line 1481
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSimOperator:Ljava/lang/String;

    return-object p0
.end method

.method public getSlotIdFromSimInformation()I
    .locals 0

    .line 1485
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSlotId:I

    return p0
.end method

.method public setSimSlotId(I)V
    .locals 0

    .line 1489
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$SimInformationForDsds;->mSlotId:I

    return-void
.end method
