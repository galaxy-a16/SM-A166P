.class public Lcom/android/server/display/config/Thresholds;
.super Ljava/lang/Object;
.source "Thresholds.java"


# instance fields
.field public brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

.field public darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;
    .locals 4

    .line 38
    new-instance v0, Lcom/android/server/display/config/Thresholds;

    invoke-direct {v0}, Lcom/android/server/display/config/Thresholds;-><init>()V

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

    const-string v2, "brighteningThresholds"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {p0}, Lcom/android/server/display/config/BrightnessThresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/Thresholds;->setBrighteningThresholds(Lcom/android/server/display/config/BrightnessThresholds;)V

    goto :goto_0

    :cond_1
    const-string v2, "darkeningThresholds"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-static {p0}, Lcom/android/server/display/config/BrightnessThresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/Thresholds;->setDarkeningThresholds(Lcom/android/server/display/config/BrightnessThresholds;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    return-object v0

    .line 57
    :cond_4
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Thresholds is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/server/display/config/Thresholds;->brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    return-object p0
.end method

.method public final getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/config/Thresholds;->darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    return-object p0
.end method

.method public final setBrighteningThresholds(Lcom/android/server/display/config/BrightnessThresholds;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/server/display/config/Thresholds;->brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    return-void
.end method

.method public final setDarkeningThresholds(Lcom/android/server/display/config/BrightnessThresholds;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/server/display/config/Thresholds;->darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    return-void
.end method
