.class public final Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "ScOpenData.java"


# instance fields
.field public final filename:Ljava/lang/String;

.field public final flags:I

.field public final mode:I

.field public final pidTgid:J

.field public final ret:J

.field public final uidGid:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IIJJJJ)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p7, p8}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 28
    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    .line 30
    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    .line 31
    iput-wide p5, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    .line 32
    iput-wide p9, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->pidTgid:J

    .line 33
    iput-wide p11, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->uidGid:J

    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->pidTgid:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result p0

    return p0
.end method

.method public getUid()I
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->uidGid:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "when"

    .line 64
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "what"

    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->pidTgid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->uidGid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "filename"

    .line 68
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flags"

    .line 69
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "mode"

    .line 70
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ret"

    .line 71
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "when"

    .line 80
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "what"

    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    .line 82
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->pidTgid:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uid"

    .line 83
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->uidGid:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "filename"

    .line 84
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flags"

    .line 85
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "mode"

    .line 86
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ret"

    .line 87
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toLine()Ljava/lang/String;
    .locals 12

    .line 38
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->pidTgid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->uidGid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "when : %d | what : %d | pid : %d | uid : %d | filename : %s | flags : %d | mode : %d | ret : %d%s"

    .line 38
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "when"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "what"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->pidTgid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->uidGid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "filename"

    .line 54
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->filename:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;->ret:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "ret"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
