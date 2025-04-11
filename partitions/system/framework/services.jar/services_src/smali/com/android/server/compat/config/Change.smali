.class public Lcom/android/server/compat/config/Change;
.super Ljava/lang/Object;
.source "Change.java"


# instance fields
.field public description:Ljava/lang/String;

.field public disabled:Ljava/lang/Boolean;

.field public enableAfterTargetSdk:Ljava/lang/Integer;

.field public enableSinceTargetSdk:Ljava/lang/Integer;

.field public id:Ljava/lang/Long;

.field public loggingOnly:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

.field public overridable:Ljava/lang/Boolean;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/config/Change;
    .locals 5

    .line 168
    new-instance v0, Lcom/android/server/compat/config/Change;

    invoke-direct {v0}, Lcom/android/server/compat/config/Change;-><init>()V

    const-string v1, "id"

    const/4 v2, 0x0

    .line 170
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 173
    invoke-virtual {v0, v3, v4}, Lcom/android/server/compat/config/Change;->setId(J)V

    :cond_0
    const-string/jumbo v1, "name"

    .line 175
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setName(Ljava/lang/String;)V

    :cond_1
    const-string v1, "disabled"

    .line 180
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 182
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setDisabled(Z)V

    :cond_2
    const-string/jumbo v1, "loggingOnly"

    .line 185
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setLoggingOnly(Z)V

    :cond_3
    const-string v1, "enableAfterTargetSdk"

    .line 190
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setEnableAfterTargetSdk(I)V

    :cond_4
    const-string v1, "enableSinceTargetSdk"

    .line 195
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setEnableSinceTargetSdk(I)V

    :cond_5
    const-string v1, "description"

    .line 200
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setDescription(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v1, "overridable"

    .line 205
    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 207
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/server/compat/config/Change;->setOverridable(Z)V

    .line 210
    :cond_7
    invoke-static {p0}, Lcom/android/server/compat/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 213
    invoke-virtual {v0, p0}, Lcom/android/server/compat/config/Change;->setValue(Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDisabled()Z
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnableAfterTargetSdk()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 87
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getEnableSinceTargetSdk()I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getId()J
    .locals 2

    .line 15
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoggingOnly()Z
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOverridable()Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnableAfterTargetSdk(I)V
    .locals 0

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    return-void
.end method

.method public setEnableSinceTargetSdk(I)V
    .locals 0

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLoggingOnly(Z)V
    .locals 0

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-void
.end method

.method public setOverridable(Z)V
    .locals 0

    .line 149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    return-void
.end method
