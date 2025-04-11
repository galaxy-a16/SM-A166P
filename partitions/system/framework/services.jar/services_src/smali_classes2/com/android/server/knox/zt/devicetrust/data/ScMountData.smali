.class public final Lcom/android/server/knox/zt/devicetrust/data/ScMountData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "ScMountData.java"


# instance fields
.field public final data:Ljava/lang/String;

.field public final devName:Ljava/lang/String;

.field public final dirName:Ljava/lang/String;

.field public final flags:J

.field public final pidTgid:J

.field public final ret:J

.field public final type:Ljava/lang/String;

.field public final uidGid:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJJJ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p10, p11}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 30
    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    .line 33
    iput-wide p5, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    .line 34
    iput-object p7, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    .line 35
    iput-wide p8, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

    .line 36
    iput-wide p12, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->pidTgid:J

    .line 37
    iput-wide p14, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->uidGid:J

    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->pidTgid:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result p0

    return p0
.end method

.method public getUid()I
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->uidGid:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "when"

    .line 70
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "what"

    .line 71
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->pidTgid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->uidGid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dev_name"

    .line 74
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dir_name"

    .line 75
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    .line 76
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flags"

    .line 77
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "data"

    .line 78
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ret"

    .line 79
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "when"

    .line 88
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "what"

    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    .line 90
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->pidTgid:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uid"

    .line 91
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->uidGid:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dev_name"

    .line 92
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dir_name"

    .line 93
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    .line 94
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flags"

    .line 95
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 96
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ret"

    .line 97
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toLine()Ljava/lang/String;
    .locals 14

    .line 42
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->pidTgid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->uidGid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v3 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "when : %d | what : %d | pid : %d | uid : %d | dev_name : %s | dir_name : %s | type : %s | flags : %d | data : %s | ret : %d%s"

    .line 42
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "when"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "what"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->pidTgid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->uidGid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dev_name"

    .line 58
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dir_name"

    .line 59
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "type"

    .line 60
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 62
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "ret"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
