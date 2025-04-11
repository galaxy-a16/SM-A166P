.class public final Lcom/android/server/knox/zt/devicetrust/data/PktData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "PktData.java"


# instance fields
.field public final dstAddr:Ljava/lang/String;

.field public final dstPort:I

.field public final fingerprint:Ljava/lang/String;

.field public final srcAddr:Ljava/lang/String;

.field public final srcPort:I

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 28
    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->uid:I

    .line 29
    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    .line 30
    iput-object p6, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    .line 33
    iput p9, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    .line 34
    iput p10, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->uid:I

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "when"

    .line 66
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "what"

    .line 67
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    .line 69
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fingerprint"

    .line 70
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "saddr"

    .line 71
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "daddr"

    .line 72
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sport"

    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dport"

    .line 74
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "when"

    .line 83
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "what"

    .line 84
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uid"

    .line 85
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->uid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    .line 86
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fingerprint"

    .line 87
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "saddr"

    .line 88
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "daddr"

    .line 89
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sport"

    .line 90
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dport"

    .line 91
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toLine()Ljava/lang/String;
    .locals 13

    .line 39
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 43
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "when : %d | what : %d | uid : %d | type : %d | fingerprint : %s | saddr : %s | daddr : %s | sport : %d | dport : %d%s"

    .line 39
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "when"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "what"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fingerprint"

    .line 55
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->fingerprint:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "saddr"

    .line 56
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcAddr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "daddr"

    .line 57
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstAddr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->srcPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/PktData;->dstPort:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "dport"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
