.class public Lcom/android/server/display/config/layout/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field public address:Ljava/math/BigInteger;

.field public brightnessThrottlingMapId:Ljava/lang/String;

.field public defaultDisplay:Ljava/lang/Boolean;

.field public displayGroup:Ljava/lang/String;

.field public enabled:Ljava/lang/Boolean;

.field public position:Ljava/lang/String;

.field public refreshRateThermalThrottlingMapId:Ljava/lang/String;

.field public refreshRateZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/layout/Display;
    .locals 4

    .line 140
    new-instance v0, Lcom/android/server/display/config/layout/Display;

    invoke-direct {v0}, Lcom/android/server/display/config/layout/Display;-><init>()V

    const-string v1, "enabled"

    const/4 v2, 0x0

    .line 142
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setEnabled(Z)V

    :cond_0
    const-string v1, "defaultDisplay"

    .line 147
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setDefaultDisplay(Z)V

    :cond_1
    const-string/jumbo v1, "refreshRateZoneId"

    .line 152
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setRefreshRateZoneId(Ljava/lang/String;)V

    :cond_2
    const-string v1, "displayGroup"

    .line 157
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 160
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setDisplayGroup(Ljava/lang/String;)V

    .line 162
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 164
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_9

    if-eq v1, v3, :cond_9

    .line 166
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 167
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/layout/Display;->setAddress(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "position"

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setPosition(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "brightnessThrottlingMapId"

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 177
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setBrightnessThrottlingMapId(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "refreshRateThermalThrottlingMapId"

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 181
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setRefreshRateThermalThrottlingMapId(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_8
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_9
    if-ne v1, v3, :cond_a

    return-object v0

    .line 189
    :cond_a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Display is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAddress()Ljava/math/BigInteger;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->address:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getBrightnessThrottlingMapId()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->brightnessThrottlingMapId:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayGroup()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->displayGroup:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->position:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRateThermalThrottlingMapId()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->refreshRateThermalThrottlingMapId:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRateZoneId()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->refreshRateZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public isDefaultDisplay()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setAddress(Ljava/math/BigInteger;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->address:Ljava/math/BigInteger;

    return-void
.end method

.method public setBrightnessThrottlingMapId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->brightnessThrottlingMapId:Ljava/lang/String;

    return-void
.end method

.method public setDefaultDisplay(Z)V
    .locals 0

    .line 106
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    return-void
.end method

.method public setDisplayGroup(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->displayGroup:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->position:Ljava/lang/String;

    return-void
.end method

.method public setRefreshRateThermalThrottlingMapId(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->refreshRateThermalThrottlingMapId:Ljava/lang/String;

    return-void
.end method

.method public setRefreshRateZoneId(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->refreshRateZoneId:Ljava/lang/String;

    return-void
.end method
