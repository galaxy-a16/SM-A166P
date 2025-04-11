.class public Lcom/android/server/display/config/RefreshRateConfigs;
.super Ljava/lang/Object;
.source "RefreshRateConfigs.java"


# instance fields
.field public defaultPeakRefreshRate:Ljava/math/BigInteger;

.field public defaultRefreshRate:Ljava/math/BigInteger;

.field public defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

.field public defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

.field public higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

.field public lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

.field public refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateConfigs;
    .locals 4

    new-instance v0, Lcom/android/server/display/config/RefreshRateConfigs;

    invoke-direct {v0}, Lcom/android/server/display/config/RefreshRateConfigs;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_8

    if-eq v1, v3, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultRefreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRate(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    const-string v2, "defaultPeakRefreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultPeakRefreshRate(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "refreshRateZoneProfiles"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateZoneProfiles;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateZoneProfiles;)V

    goto :goto_0

    :cond_3
    const-string v2, "defaultRefreshRateInHbmHdr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRateInHbmHdr(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_4
    const-string v2, "defaultRefreshRateInHbmSunlight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRateInHbmSunlight(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_5
    const-string v2, "lowerBlockingZoneConfigs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setLowerBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "higherBlockingZoneConfigs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setHigherBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_8
    if-ne v1, v3, :cond_9

    return-object v0

    :cond_9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "RefreshRateConfigs is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getDefaultPeakRefreshRate()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRate()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getHigherBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-object p0
.end method

.method public final getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-object p0
.end method

.method public final getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    return-object p0
.end method

.method public final setDefaultPeakRefreshRate(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRate(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRateInHbmHdr(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRateInHbmSunlight(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    return-void
.end method

.method public final setHigherBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-void
.end method

.method public final setLowerBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-void
.end method

.method public final setRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateZoneProfiles;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    return-void
.end method
