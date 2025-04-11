.class public Lcom/android/server/display/config/RefreshRateThrottlingPoint;
.super Ljava/lang/Object;
.source "RefreshRateThrottlingPoint.java"


# instance fields
.field public refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

.field public thermalStatus:Lcom/android/server/display/config/ThermalStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateThrottlingPoint;
    .locals 4

    .line 38
    new-instance v0, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    invoke-direct {v0}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;-><init>()V

    .line 40
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "thermalStatus"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->setThermalStatus(Lcom/android/server/display/config/ThermalStatus;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "refreshRateRange"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->setRefreshRateRange(Lcom/android/server/display/config/RefreshRateRange;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    return-object v0

    .line 58
    :cond_4
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "RefreshRateThrottlingPoint is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    return-object p0
.end method

.method public final getThermalStatus()Lcom/android/server/display/config/ThermalStatus;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    return-object p0
.end method

.method public final setRefreshRateRange(Lcom/android/server/display/config/RefreshRateRange;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    return-void
.end method

.method public final setThermalStatus(Lcom/android/server/display/config/ThermalStatus;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    return-void
.end method
