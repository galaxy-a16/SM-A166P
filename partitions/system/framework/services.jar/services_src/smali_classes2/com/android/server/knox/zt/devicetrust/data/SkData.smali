.class public final Lcom/android/server/knox/zt/devicetrust/data/SkData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "SkData.java"


# instance fields
.field public final dstAddr:Ljava/lang/String;

.field public final dstAddrV6:Ljava/lang/String;

.field public final dstPort:I

.field public final family:I

.field public final newState:I

.field public final oldState:I

.field public final pidTgid:J

.field public final protocol:I

.field public final srcAddr:Ljava/lang/String;

.field public final srcAddrV6:Ljava/lang/String;

.field public final srcPort:I

.field public final uidGid:J


# direct methods
.method public constructor <init>(IIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-wide/from16 v2, p12

    .line 33
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    move v1, p2

    .line 34
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    move v1, p3

    .line 35
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    move v1, p4

    .line 36
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    move v1, p5

    .line 37
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    move v1, p6

    .line 38
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    move v1, p7

    .line 39
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    move-object v1, p8

    .line 40
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    move-object v1, p9

    .line 41
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    move-object v1, p10

    .line 42
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    move-object v1, p11

    .line 43
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    move-wide/from16 v1, p14

    .line 44
    iput-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->pidTgid:J

    move-wide/from16 v1, p16

    .line 45
    iput-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->uidGid:J

    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->pidTgid:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result p0

    return p0
.end method

.method public getUid()I
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->uidGid:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "when"

    .line 84
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "what"

    .line 85
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->pidTgid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->uidGid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "oldState"

    .line 88
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "newState"

    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sport"

    .line 90
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dport"

    .line 91
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "family"

    .line 92
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "protocol"

    .line 93
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "saddr"

    .line 94
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "daddr"

    .line 95
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "saddr_v6"

    .line 96
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "daddr_v6"

    .line 97
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "when"

    .line 106
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "what"

    .line 107
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    .line 108
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->pidTgid:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uid"

    .line 109
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->uidGid:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "oldState"

    .line 110
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "newState"

    .line 111
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "sport"

    .line 112
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dport"

    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "family"

    .line 114
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "protocol"

    .line 115
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "saddr"

    .line 116
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "daddr"

    .line 117
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "saddr_v6"

    .line 118
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "daddr_v6"

    .line 119
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toLine()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    .line 50
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->pidTgid:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->uidGid:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    move-object/from16 v19, v1

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    filled-new-array/range {v4 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "when : %d | what : %d | pid : %d | uid : %d | oldstate : %d | newstate : %d | sport : %d | dport : %d | family : %d | protocol : %d | saddr : %s | daddr : %s | saddr_v6 : %s | daddr_v6 : %s%s"

    move-object/from16 v2, v19

    .line 50
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "when"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "what"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->pidTgid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->uidGid:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oldState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "newState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "family"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "protocol"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "saddr"

    .line 74
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "daddr"

    .line 75
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "saddr_v6"

    .line 76
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "daddr_v6"

    .line 77
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
