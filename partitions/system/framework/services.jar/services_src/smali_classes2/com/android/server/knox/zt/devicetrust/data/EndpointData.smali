.class public abstract Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.super Ljava/lang/Object;
.source "EndpointData.java"


# static fields
.field public static final USE_ACTUAL_TIME:Z = true


# instance fields
.field public actualEventTime:J

.field public final event:I

.field public final eventTime:J

.field public extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    iput-wide p2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->eventTime:J

    return-void
.end method


# virtual methods
.method public adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 4

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->eventTime:J

    add-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    :cond_0
    return-object p0
.end method

.method public getEvent()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    return p0
.end method

.method public abstract getPid()I
.end method

.method public getPid(J)I
    .locals 0

    const/16 p0, 0x20

    shr-long p0, p1, p0

    long-to-int p0, p0

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    return-wide v0
.end method

.method public abstract getUid()I
.end method

.method public getUid(J)I
    .locals 0

    long-to-int p0, p1

    return p0
.end method

.method public readExtras(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, " | "

    if-eqz p1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-direct {v0, p1, v2, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p1, p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object v1, v1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p1, p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkgName : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object v1, v1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p1, p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "procName : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readExtras(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "label"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    if-eqz p0, :cond_4

    const-string/jumbo v0, "procName"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public readExtras(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "label"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    if-eqz p0, :cond_4

    const-string/jumbo v0, "procName"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    return-void
.end method

.method public abstract toBundle()Landroid/os/Bundle;
.end method

.method public abstract toJson()Ljava/lang/String;
.end method

.method public abstract toLine()Ljava/lang/String;
.end method

.method public abstract toMap()Ljava/util/Map;
.end method

.method public updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    invoke-direct {v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getInstance()Lcom/android/server/knox/zt/devicetrust/data/Utils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getInstance()Lcom/android/server/knox/zt/devicetrust/data/Utils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    :cond_3
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getInstance()Lcom/android/server/knox/zt/devicetrust/data/Utils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getSecurityContextForPid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    :cond_4
    return-object p0
.end method
