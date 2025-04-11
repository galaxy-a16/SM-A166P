.class public Lcom/android/server/am/TrafficStateDatabaseController$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "TrafficStateDatabaseController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .locals 0

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 6

    const-string p0, "-1"

    const-string p2, ""

    :try_start_0
    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p9, 0xc8

    const-string v0, ", mInsertList= "

    if-ge p4, p9, :cond_2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smismInsertList()Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p9, "onDnsEvent():  objTrafficStats.size= "

    invoke-virtual {p4, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object p9

    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result p9

    invoke-virtual {p4, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smismInsertList()Z

    move-result p9

    invoke-virtual {p4, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    const/4 p4, 0x1

    invoke-static {p4}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smsetmInsertDb(Z)V

    if-eqz p5, :cond_0

    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, "000.000.00.00"

    :goto_0
    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smgetCellId()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smgetRsrp()Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smgetTechType()Ljava/lang/String;

    move-result-object p9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p4}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smgetIPDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smgetMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smisWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p9, "Wifi Connected"

    invoke-static {p9}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$sfputbandNumber(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p0, p9

    :goto_1
    new-instance p9, Landroid/content/ContentValues;

    invoke-direct {p9}, Landroid/content/ContentValues;-><init>()V

    if-lez p6, :cond_3

    const-string p6, "cellId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p9, p6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p6, "rsrp"

    invoke-virtual {p9, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p5, "techType"

    invoke-virtual {p9, p5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bandNumber"

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$sfgetbandNumber()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p9, p0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "timestamp"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p9, p0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "transactionID"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DNSType"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "IPAddress"

    invoke-virtual {p9, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "responseTime"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "responseCode"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "consumed"

    const-string p1, "0"

    invoke-virtual {p9, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smsetmInsertList(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onDnsEvent(): Max List Size= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$sfgetobjTrafficStats()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smismInsertList()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mInsertDb= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smismInsertDb()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smismInsertDb()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smsetmInsertDb(Z)V

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$sminsertValues()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onDnsEvent(): Exception in Insertion"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->-$$Nest$smlog(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
