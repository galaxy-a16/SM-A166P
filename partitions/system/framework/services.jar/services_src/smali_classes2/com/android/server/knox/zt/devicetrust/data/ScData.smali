.class public final Lcom/android/server/knox/zt/devicetrust/data/ScData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "ScData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScData"


# instance fields
.field public final data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

.field public final nr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 27
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    .line 28
    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    return-void
.end method


# virtual methods
.method public adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getCloseData()Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;
    .locals 1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEvent()I
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getEvent()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getExecveData()Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;
    .locals 1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMountData()Lcom/android/server/knox/zt/devicetrust/data/ScMountData;
    .locals 1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpenData()Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;
    .locals 1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPid()I
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTime()J
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final printCastError()V
    .locals 3

    .line 72
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not castable(NR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 2

    .line 76
    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getCloseData()Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;

    move-result-object p0

    return-object p0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getOpenData()Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;

    move-result-object p0

    return-object p0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getExecveData()Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;

    move-result-object p0

    return-object p0

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getMountData()Lcom/android/server/knox/zt/devicetrust/data/ScMountData;

    move-result-object p0

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 144
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toJson()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toLine()Ljava/lang/String;
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toLine()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method
