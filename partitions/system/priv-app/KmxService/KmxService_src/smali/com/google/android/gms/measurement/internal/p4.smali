.class public final synthetic Lcom/google/android/gms/measurement/internal/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh/h;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Exception;

.field public final synthetic d:[B


# direct methods
.method public synthetic constructor <init>(Lh/h;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p4;->a:Lh/h;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/p4;->b:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/p4;->c:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/p4;->d:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p4;->a:Lh/h;

    iget-object v0, v0, Lh/h;->e:Ljava/lang/Object;

    check-cast v0, Lp5/c;

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    const-string v2, "timestamp"

    const-string v3, "gclid"

    const-string v4, ""

    const-string v5, "deeplink"

    iget v6, p0, Lcom/google/android/gms/measurement/internal/p4;->b:I

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/p4;->c:Ljava/lang/Exception;

    const/16 v8, 0xc8

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    if-eq v6, v8, :cond_0

    const/16 v8, 0xcc

    if-eq v6, v8, :cond_0

    const/16 v8, 0x130

    if-ne v6, v8, :cond_7

    move v6, v8

    :cond_0
    if-nez v7, :cond_7

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/i3;->t:Lcom/google/android/gms/measurement/internal/e3;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/e3;->a(Z)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/p4;->d:[B

    if-eqz p0, :cond_6

    array-length v6, p0

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    invoke-virtual {p0, v2, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, v9, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Deferred Deep Link is empty."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p0, v1, Lb0/h;->a:Ljava/lang/Object;

    :try_start_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_cis"

    const-string v4, "ddp"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    const-string v3, "auto"

    const-string v4, "_cmp"

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/n4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :try_start_2
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    const-string v1, "google.analytics.deferred.deeplink.prefs"

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_8

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :catch_0
    move-exception v0

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_0
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Deferred Deep Link validation failed. gclid, deep link"

    invoke-virtual {p0, v0, v4, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Failed to parse the Deferred Deep Link response. exception"

    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p0, "Deferred Deep Link response empty."

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-virtual {v0, v1, p0, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void
.end method
