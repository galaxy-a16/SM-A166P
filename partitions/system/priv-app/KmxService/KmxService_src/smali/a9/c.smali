.class public abstract La9/c;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "c"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public isMarketingDisplayEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public marketingMessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract messageReceived(Lcom/google/firebase/messaging/p;)V
.end method

.method public final onMessageReceived(Lcom/google/firebase/messaging/p;)V
    .locals 14

    invoke-virtual {p1}, Lcom/google/firebase/messaging/p;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "google.delivered_priority"

    iget-object v2, p1, Lcom/google/firebase/messaging/p;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v1, :cond_1

    const-string v1, "google.priority_reduced"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "google.priority"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "high"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v2, "normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    new-instance v2, Lh5/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lp1/l;

    const/16 v7, 0xf

    invoke-direct {v6, v7, p0, p1}, Lp1/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lfc/e;->G()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "d"

    const-string p1, "The current country code is not supported on this sdk. should check the sdk that you are importing."

    invoke-static {p0, p1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_4
    const/4 p0, 0x0

    if-nez v0, :cond_5

    invoke-static {p0}, Lh5/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    move-object p1, p0

    goto :goto_2

    :cond_5
    const-string p1, "ppmt"

    check-cast v0, Ll/j;

    invoke-virtual {v0, p1, p0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v7, "smp-requestID"

    invoke-virtual {v0, v7, p0}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lh5/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p1, :cond_e

    const-string v7, "d"

    const-string v8, "message received : smp"

    invoke-static {v7, v8}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Error while handling marketingMessageReceivedImpl. "

    const-string v8, "Invalid message. wrong type : "

    invoke-static {v2}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    const-string v10, "deactivate_smp"

    invoke-virtual {v9, v10}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    const-string v9, "d"

    if-eqz v10, :cond_6

    const-string p1, "message received but deactivated"

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lm9/a;->W(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string p1, "message received but push registration is not done"

    goto :goto_3

    :cond_7
    invoke-static {}, Lfc/e;->t()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string p1, "message received but not supported : spp force activation feature"

    :goto_3
    invoke-static {v9, p1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_8
    invoke-static {v9, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x3

    sparse-switch v12, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v12, "test"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v5

    goto :goto_5

    :sswitch_1
    const-string v12, "passive"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v4

    goto :goto_5

    :sswitch_2
    const-string v12, "marketing"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v3

    goto :goto_5

    :sswitch_3
    const-string v12, "system_gdpr"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v13

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v12, -0x1

    :goto_5
    if-eqz v12, :cond_b

    if-eq v12, v4, :cond_b

    if-eq v12, v5, :cond_b

    if-eq v12, v13, :cond_a

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_a
    invoke-static {v2, v10}, Lkotlin/jvm/internal/m;->j(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_a

    :cond_b
    const-string v5, "extra"

    invoke-virtual {v10, v5, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v8, v6, Lp1/l;->c:Ljava/lang/Object;

    check-cast v8, La9/c;

    invoke-virtual {v8, v5}, La9/c;->isMarketingDisplayEnabled(Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    xor-int/2addr v4, v8

    goto :goto_6

    :catch_0
    move-exception v4

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Error while handling isMarketingDisplayEnabledImpl. "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :goto_6
    if-eqz v4, :cond_c

    const-string v1, "display : disabled"

    invoke-static {v9, v1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    invoke-static {v2}, Lfc/e;->B(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v1, "failed. device does not support"

    invoke-static {v9, v1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-static {v1, v2, p1}, Lcom/samsung/android/sdk/smp/marketing/j;->k(ILandroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_7
    :try_start_4
    iget-object v1, v6, Lp1/l;->c:Ljava/lang/Object;

    check-cast v1, La9/c;

    invoke-virtual {v1, p1, v5}, La9/c;->marketingMessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :catch_1
    move-exception p1

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    invoke-static {v9, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    :catch_2
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Invalid message. "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    move v4, v3

    goto :goto_a

    :catchall_0
    move-exception p0

    monitor-exit v9

    throw p0

    :cond_e
    const-string p1, "d"

    const-string v1, "message received : general"

    invoke-static {p1, v1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p1

    invoke-virtual {p1}, Lf9/c;->J()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fcm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object p1, v6, Lp1/l;->c:Ljava/lang/Object;

    check-cast p1, La9/c;

    iget-object v1, v6, Lp1/l;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/messaging/p;

    invoke-virtual {p1, v1}, La9/c;->messageReceived(Lcom/google/firebase/messaging/p;)V

    :goto_a
    move-object p1, p0

    move-object v1, p1

    goto :goto_b

    :cond_f
    const-string v1, "d"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "message received but type mismatched. type : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "d"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "error : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " will not be delivered"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EACK001"

    const-string v1, "fcm"

    :goto_b
    if-eqz v4, :cond_18

    const-string v4, "fcm"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string p0, "d"

    const-string p1, "reqId is empty. do not send ack"

    goto :goto_c

    :cond_10
    const-string v5, "d"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "message received [reqId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lm9/a;->W(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string p0, "d"

    const-string p1, "message received but push registration is not done"

    :goto_c
    invoke-static {p0, p1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_11
    sget v5, Lj3/f;->n:I

    if-eqz v2, :cond_17

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto/16 :goto_e

    :cond_12
    invoke-static {v2}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v5

    if-nez v5, :cond_13

    const-string p0, "f"

    const-string p1, "saveAck fail. dbHandler null"

    goto/16 :goto_f

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "fail to add ack. database insert exception."

    monitor-enter v5

    :try_start_6
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "rid"

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ts"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "fail"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "type"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v4, ""

    :cond_14
    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "errorcode"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "errormsg"

    invoke-virtual {v9, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_16
    :try_start_7
    iget-object p1, v5, Lc9/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "ack"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, p0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_d

    :catch_3
    move-exception p0

    :try_start_8
    const-string p1, "b"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_d
    monitor-exit v5

    invoke-virtual {v5}, Lc9/b;->c()V

    goto :goto_10

    :catchall_1
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_17
    :goto_e
    const-string p0, "f"

    const-string p1, "saveAck fail. invalid request. reqId:"

    const-string v1, ", pushType:fcm"

    invoke-static {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_f
    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    invoke-static {v2}, Lj3/f;->d(Landroid/content/Context;)V

    :cond_18
    :goto_11
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b865c51 -> :sswitch_3
        -0x37a835da -> :sswitch_2
        -0x2f3590d9 -> :sswitch_1
        0x364492 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onNewToken(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lfc/e;->G()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, La9/c;->TAG:Ljava/lang/String;

    const-string p1, "The current country code is not supported on this sdk. should check the sdk that you are importing."

    invoke-static {p0, p1}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "deactivate_smp"

    invoke-virtual {v0, v1}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_1

    sget-object p0, La9/c;->TAG:Ljava/lang/String;

    const-string p1, "token refreshed. smp is deactivated. do nothing"

    invoke-static {p0, p1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lf9/c;->J()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fcm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p0, La9/c;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "token refreshed but push type is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". skip this"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new token : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, La9/c;->TAG:Ljava/lang/String;

    const-string v2, "token refreshed"

    invoke-static {v1, v2}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_1
    const-string v1, "pid"

    invoke-virtual {v0, v1, p1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-static {p0}, Lva/n;->y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf9/c;->Q(I)V

    invoke-static {p0, v1}, Lva/n;->Q(Landroid/content/Context;Z)V

    :cond_3
    invoke-static {p0, p1}, Lh9/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
