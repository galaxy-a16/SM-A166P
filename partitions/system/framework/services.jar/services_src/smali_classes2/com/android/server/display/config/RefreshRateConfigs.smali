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

    .line 118
    new-instance v0, Lcom/android/server/display/config/RefreshRateConfigs;

    invoke-direct {v0}, Lcom/android/server/display/config/RefreshRateConfigs;-><init>()V

    .line 120
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 122
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_8

    if-eq v1, v3, :cond_8

    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultRefreshRate"

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRate(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    const-string v2, "defaultPeakRefreshRate"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultPeakRefreshRate(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "refreshRateZoneProfiles"

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateZoneProfiles;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateZoneProfiles;)V

    goto :goto_0

    :cond_3
    const-string v2, "defaultRefreshRateInHbmHdr"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRateInHbmHdr(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_4
    const-string v2, "defaultRefreshRateInHbmSunlight"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 142
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateConfigs;->setDefaultRefreshRateInHbmSunlight(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_5
    const-string v2, "lowerBlockingZoneConfigs"

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 146
    invoke-static {p0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setLowerBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "higherBlockingZoneConfigs"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 149
    invoke-static {p0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateConfigs;->setHigherBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V

    goto/16 :goto_0

    .line 152
    :cond_7
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_8
    if-ne v1, v3, :cond_9

    return-object v0

    .line 156
    :cond_9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "RefreshRateConfigs is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getDefaultPeakRefreshRate()Ljava/math/BigInteger;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRate()Ljava/math/BigInteger;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getHigherBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-object p0
.end method

.method public final getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-object p0
.end method

.method public final getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    return-object p0
.end method

.method public final setDefaultPeakRefreshRate(Ljava/math/BigInteger;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRate(Ljava/math/BigInteger;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRateInHbmHdr(Ljava/math/BigInteger;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDefaultRefreshRateInHbmSunlight(Ljava/math/BigInteger;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    return-void
.end method

.method public final setHigherBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-void
.end method

.method public final setLowerBlockingZoneConfigs(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    return-void
.end method

.method public final setRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateZoneProfiles;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    return-void
.end method
