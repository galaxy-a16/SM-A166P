.class public final Li9/c;
.super Lcom/samsung/android/sdk/smp/common/network/d;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lorg/json/JSONObject;

.field public f:Lorg/json/JSONObject;

.field public final g:Lorg/json/JSONArray;

.field public final h:Lorg/json/JSONArray;

.field public final i:Lorg/json/JSONArray;

.field public final j:Lorg/json/JSONArray;

.field public final k:Lorg/json/JSONObject;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/network/d;-><init>()V

    iput-object p1, p0, Li9/c;->b:Landroid/content/Context;

    iput-object p2, p0, Li9/c;->c:Ljava/lang/String;

    iput-object p3, p0, Li9/c;->d:Ljava/lang/String;

    iput-object p4, p0, Li9/c;->e:Lorg/json/JSONObject;

    iput-object p5, p0, Li9/c;->f:Lorg/json/JSONObject;

    iput-object p6, p0, Li9/c;->g:Lorg/json/JSONArray;

    iput-object p7, p0, Li9/c;->h:Lorg/json/JSONArray;

    iput-object p8, p0, Li9/c;->i:Lorg/json/JSONArray;

    iput-object p9, p0, Li9/c;->j:Lorg/json/JSONArray;

    iput-object p10, p0, Li9/c;->k:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final c()Lorg/json/JSONObject;
    .locals 11

    iget-object v0, p0, Li9/c;->j:Lorg/json/JSONArray;

    iget-object v1, p0, Li9/c;->i:Lorg/json/JSONArray;

    iget-object v2, p0, Li9/c;->h:Lorg/json/JSONArray;

    iget-object v3, p0, Li9/c;->g:Lorg/json/JSONArray;

    const-string v4, "c"

    const-string v5, "test device : "

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "currentdts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "basic"

    iget-object v8, p0, Li9/c;->e:Lorg/json/JSONObject;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v7, p0, Li9/c;->f:Lorg/json/JSONObject;

    sget v8, Li4/f;->e:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v9

    :goto_1
    if-nez v7, :cond_2

    const-string v7, "appfilter"

    iget-object v10, p0, Li9/c;->f:Lorg/json/JSONObject;

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {v3}, Li4/f;->A(Lorg/json/JSONArray;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "appReferrerKey"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-static {v2}, Li4/f;->A(Lorg/json/JSONArray;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "appstart"

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-static {v1}, Li4/f;->A(Lorg/json/JSONArray;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "session"

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-static {v0}, Li4/f;->A(Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "marketing"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    iget-object p0, p0, Li9/c;->k:Lorg/json/JSONObject;

    if-eqz p0, :cond_7

    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v8, v9

    :cond_8
    if-nez v8, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "test"

    invoke-virtual {v6, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return-object v6

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidDataException;-><init>()V

    throw p0
.end method

.method public final d()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/network/d;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Li9/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "clients"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p0, p0, Li9/c;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Li9/c;->l:Z

    return p0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "initsts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "confv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Li9/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lfc/e;->F(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "sdkv"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "appv"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method
