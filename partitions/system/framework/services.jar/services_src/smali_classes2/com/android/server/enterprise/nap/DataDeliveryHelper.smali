.class public Lcom/android/server/enterprise/nap/DataDeliveryHelper;
.super Ljava/lang/Object;
.source "DataDeliveryHelper.java"


# static fields
.field public static final DBG:Z


# instance fields
.field public identifier:Ljava/lang/String;

.field public operationUserId:I

.field public profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field public serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 48
    iput-object p2, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 49
    iput p3, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final blockDnsFlow(Lorg/json/JSONObject;II)I
    .locals 3

    const/4 p0, 0x1

    :try_start_0
    const-string v0, "dport"

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "53"

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "dnsuid"

    .line 306
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 307
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    if-eq p0, p2, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :catch_0
    :cond_2
    :goto_0
    return p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    return-object p0
.end method

.method public getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getBinderObject()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-object p0
.end method

.method public processData(Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "brecv"

    const-string v2, "end"

    const-string/jumbo v3, "start"

    const-string v4, "bsent"

    const-string/jumbo v5, "protocol"

    const-string/jumbo v6, "sport"

    const-string v7, "dst"

    const-string/jumbo v8, "src"

    const-string/jumbo v9, "recordtype"

    const-string v10, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v11, "parentprochash"

    const-string/jumbo v12, "prochash"

    const-string/jumbo v13, "procname"

    const-string v14, "dnsuid"

    const-string/jumbo v15, "uid"

    move-object/from16 v16, v10

    .line 57
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    move-object/from16 v17, v14

    move-object/from16 v14, p1

    :try_start_1
    invoke-direct {v10, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v14, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlags()I

    move-result v14

    move-object/from16 v18, v1

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .line 67
    :try_start_2
    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    if-eqz v20, :cond_2

    .line 70
    :try_start_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 71
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v20, v3

    .line 73
    iget v3, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    invoke-virtual {v0, v10, v3, v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->blockDnsFlow(Lorg/json/JSONObject;II)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11

    move-object/from16 v21, v4

    if-lez v3, :cond_3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    const/4 v3, 0x0

    .line 78
    :try_start_4
    iget v0, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eq v2, v0, :cond_3

    return-object v3

    :catch_0
    move-exception v0

    move-object v1, v3

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_c

    :catch_2
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 83
    :try_start_5
    iget v0, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_11

    if-eq v2, v0, :cond_3

    const/4 v2, 0x0

    return-object v2

    :catch_3
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_2
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    :cond_3
    const/4 v2, 0x0

    .line 92
    :try_start_6
    invoke-virtual {v10, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    .line 93
    :try_start_7
    invoke-virtual {v1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    const v0, 0x8000

    and-int/2addr v0, v14

    if-nez v0, :cond_4

    if-nez v14, :cond_5

    :cond_4
    const/4 v2, 0x0

    .line 96
    :try_start_8
    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    .line 97
    :try_start_9
    invoke-virtual {v1, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11

    :cond_5
    and-int/lit16 v0, v14, 0x100

    const-string/jumbo v2, "pid"

    if-nez v0, :cond_6

    if-nez v14, :cond_7

    :cond_6
    const/4 v3, 0x0

    .line 101
    :try_start_a
    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 102
    :try_start_b
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    :cond_7
    and-int/lit16 v0, v14, 0x1000

    const-string/jumbo v3, "puid"

    if-nez v0, :cond_8

    if-nez v14, :cond_9

    :cond_8
    const/4 v4, 0x0

    .line 106
    :try_start_c
    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 107
    :try_start_d
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    :cond_9
    and-int/lit16 v0, v14, 0x2000

    if-nez v0, :cond_a

    if-nez v14, :cond_b

    :cond_a
    const/4 v4, 0x0

    .line 111
    :try_start_e
    invoke-virtual {v10, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 112
    :try_start_f
    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    :cond_b
    and-int/lit8 v0, v14, 0x8

    if-nez v0, :cond_c

    if-nez v14, :cond_d

    :cond_c
    const/4 v4, 0x0

    .line 116
    :try_start_10
    invoke-virtual {v10, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 117
    :try_start_11
    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    :cond_d
    and-int/lit16 v0, v14, 0x4000

    if-nez v0, :cond_e

    if-nez v14, :cond_f

    :cond_e
    const/4 v4, 0x0

    .line 121
    :try_start_12
    invoke-virtual {v10, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    .line 122
    :try_start_13
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    :cond_f
    and-int/lit8 v0, v14, 0x10

    const-string v4, "dport"

    if-nez v0, :cond_10

    if-nez v14, :cond_11

    :cond_10
    const/4 v6, 0x0

    .line 126
    :try_start_14
    invoke-virtual {v10, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 127
    :try_start_15
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    :cond_11
    and-int/lit16 v0, v14, 0x800

    if-nez v0, :cond_13

    if-nez v14, :cond_12

    goto :goto_1

    :cond_12
    const/4 v6, 0x0

    goto :goto_2

    :cond_13
    :goto_1
    const/4 v6, 0x0

    .line 131
    :try_start_16
    invoke-virtual {v10, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    .line 137
    :goto_2
    :try_start_17
    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    if-eqz v0, :cond_33

    .line 138
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    goto/16 :goto_a

    :cond_14
    and-int/lit16 v5, v14, 0x400

    if-nez v5, :cond_15

    if-nez v14, :cond_16

    .line 141
    :cond_15
    invoke-virtual {v1, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    :cond_16
    and-int/lit16 v0, v14, 0x200

    const-string v5, "0"

    if-nez v0, :cond_17

    if-nez v14, :cond_1a

    :cond_17
    const/4 v6, 0x0

    .line 149
    :try_start_19
    invoke-virtual {v10, v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v10, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual {v10, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1a

    if-eqz v7, :cond_1a

    .line 153
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_3

    .line 156
    :cond_18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_19
    :goto_3
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    goto :goto_4

    :catch_4
    const/4 v2, 0x0

    .line 162
    :try_start_1a
    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e

    :cond_1a
    :goto_4
    and-int/lit16 v0, v14, 0x80

    const-string/jumbo v2, "parentprocname"

    if-nez v0, :cond_1b

    if-nez v14, :cond_1c

    :cond_1b
    const/4 v6, 0x0

    .line 166
    :try_start_1b
    invoke-virtual {v10, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a

    .line 167
    :try_start_1c
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11

    :cond_1c
    const/high16 v0, 0x40000

    and-int/2addr v0, v14

    const-string/jumbo v6, "ppid"

    if-nez v0, :cond_1d

    if-nez v14, :cond_20

    :cond_1d
    const/4 v7, 0x0

    .line 172
    :try_start_1d
    invoke-virtual {v10, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v10, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_20

    if-eqz v2, :cond_20

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_5

    .line 179
    :cond_1e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v1, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_1f
    :goto_5
    const/4 v2, 0x0

    .line 177
    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5

    :cond_20
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :catch_5
    const/4 v2, 0x0

    .line 185
    :try_start_1e
    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_7
    and-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_21

    if-nez v14, :cond_22

    :cond_21
    move-object/from16 v0, v21

    .line 189
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e

    .line 190
    :try_start_1f
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    :cond_22
    and-int/lit8 v0, v14, 0x40

    if-nez v0, :cond_23

    if-nez v14, :cond_24

    :cond_23
    move-object/from16 v0, v20

    const/4 v2, 0x0

    .line 194
    :try_start_20
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_e

    .line 195
    :try_start_21
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_12
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11

    :cond_24
    and-int/lit8 v0, v14, 0x4

    if-nez v0, :cond_25

    if-nez v14, :cond_26

    :cond_25
    move-object/from16 v0, v19

    const/4 v2, 0x0

    .line 199
    :try_start_22
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e

    .line 200
    :try_start_23
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_12
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_11

    :cond_26
    and-int/lit8 v0, v14, 0x1

    if-nez v0, :cond_27

    if-nez v14, :cond_28

    :cond_27
    move-object/from16 v0, v18

    const/4 v2, 0x0

    .line 204
    :try_start_24
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_e

    .line 205
    :try_start_25
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    and-int/lit8 v0, v14, 0x20

    if-nez v0, :cond_29

    if-nez v14, :cond_2a

    :cond_29
    const-string v0, "hostname"
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_12
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_11

    const/4 v2, 0x0

    .line 209
    :try_start_26
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_e

    :try_start_27
    const-string v2, "hostname"

    .line 210
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_12
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_11

    :cond_2a
    const/high16 v0, 0x10000

    and-int/2addr v0, v14

    if-nez v0, :cond_2c

    if-nez v14, :cond_2b

    goto :goto_8

    :cond_2b
    const/4 v2, 0x0

    goto :goto_9

    :cond_2c
    :goto_8
    const/4 v2, 0x0

    .line 215
    :try_start_28
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v3, "53"

    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6

    if-eqz v0, :cond_2d

    move-object/from16 v0, v17

    .line 218
    :try_start_29
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    :cond_2d
    move-object/from16 v0, v17

    .line 221
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7

    goto :goto_9

    :catch_6
    move-object/from16 v0, v17

    .line 226
    :catch_7
    :try_start_2a
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e
    :goto_9
    const/high16 v0, 0x20000

    and-int/2addr v0, v14

    if-nez v0, :cond_2f

    if-nez v14, :cond_30

    .line 230
    :cond_2f
    invoke-virtual {v10, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_e

    .line 231
    :try_start_2b
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    const/high16 v0, 0x80000

    and-int/2addr v0, v14

    if-nez v0, :cond_31

    if-nez v14, :cond_32

    :cond_31
    const-string v0, "iface"
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_11

    const/4 v2, 0x0

    .line 235
    :try_start_2c
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e

    :try_start_2d
    const-string v2, "iface"

    .line 236
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    :cond_32
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_2d} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_11

    goto :goto_10

    :catch_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_33
    :goto_a
    const/4 v1, 0x0

    return-object v1

    :catch_9
    move-object v1, v6

    :goto_b
    return-object v1

    :catch_a
    move-exception v0

    move-object v1, v6

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v1, v6

    goto :goto_c

    :catch_c
    move-exception v0

    move-object v1, v4

    goto :goto_d

    :catch_d
    move-exception v0

    move-object v1, v4

    goto :goto_c

    :catch_e
    move-exception v0

    move-object v1, v2

    goto :goto_d

    :catch_f
    move-exception v0

    move-object v1, v2

    goto :goto_c

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    :goto_c
    move-object/from16 v3, v16

    goto :goto_e

    :catch_11
    move-exception v0

    const/4 v1, 0x0

    :goto_d
    const-string/jumbo v2, "processData: Exception"

    move-object/from16 v3, v16

    .line 244
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :catch_12
    move-exception v0

    move-object/from16 v3, v16

    const/4 v1, 0x0

    :goto_e
    const-string/jumbo v2, "processData: JSONException"

    .line 241
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    move-object v10, v1

    :goto_10
    return-object v10
.end method
