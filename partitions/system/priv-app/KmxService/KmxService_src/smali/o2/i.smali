.class public final Lo2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lab/a;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lo3/a;->a:Lo3/a;

    iput-object p1, p0, Lo2/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/i;->c:Ljava/lang/Object;

    const-string v0, "SamsungAnalyticsPrefs"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "AppPrefs"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo2/i;->d:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getKeyValueDLM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo2/i;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo2/i;->a:Ljava/lang/Object;

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->THREE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo2/i;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/h3;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/i;->a:Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/s3;

    invoke-virtual {p1}, Lcom/google/protobuf/s3;->e()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iput-object v0, p0, Lo2/i;->b:Ljava/lang/Object;

    iput-object v0, p0, Lo2/i;->e:Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lcom/google/protobuf/s3;->g:[Lcom/google/protobuf/n3;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/n3;

    iput-object p1, p0, Lo2/i;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "get"

    const-string p2, "Case"

    .line 10
    invoke-static {p1, p3, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 11
    invoke-static {p4, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    iput-object p4, p0, Lo2/i;->b:Ljava/lang/Object;

    .line 12
    invoke-static {p1, p3, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    .line 13
    invoke-static {p5, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lo2/i;->e:Ljava/lang/Object;

    iput-object v0, p0, Lo2/i;->c:Ljava/lang/Object;

    :goto_0
    const-string p1, "clear"

    .line 14
    invoke-static {p1, p3}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    .line 15
    invoke-static {p5, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lo2/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;Ljava/util/HashMap;Landroid/content/SharedPreferences;Ls9/d;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/i;->c:Ljava/lang/Object;

    iput-object p1, p0, Lo2/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo2/i;->a:Ljava/lang/Object;

    iput-object p3, p0, Lo2/i;->e:Ljava/lang/Object;

    iput-object p4, p0, Lo2/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo2/j;Ll2/c;Lcom/google/firebase/concurrent/h;Lo2/q;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/i;->a:Ljava/lang/Object;

    const-string p1, "FCM_CLIENT_EVENT_LOGGING"

    iput-object p1, p0, Lo2/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo2/i;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo2/i;->d:Ljava/lang/Object;

    iput-object p4, p0, Lo2/i;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxa/b;Lxa/e;Lxa/c;Lt6/a;Lxa/d;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/i;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo2/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo2/i;->e:Ljava/lang/Object;

    iput-object p4, p0, Lo2/i;->d:Ljava/lang/Object;

    iput-object p5, p0, Lo2/i;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Lqa/a;->b()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 12

    const-string v0, "lgt"

    const-string v1, "policy_received_date"

    const-string v2, ""

    const-string v3, "Fail to get Policy; Invalid Message. Result code : "

    const-string v4, "Fail to get Policy. Response code : "

    const/16 v5, -0x3d

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lo2/i;->c:Ljava/lang/Object;

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    const/4 v9, 0x0

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo2/i;->c:Ljava/lang/Object;

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lv4/b;->u(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lo2/i;->c:Ljava/lang/Object;

    check-cast v10, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lv4/b;->v(Ljava/lang/String;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "rc"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v10, 0x3e8

    const-string v11, "GetPolicyClient"

    if-ne v6, v10, :cond_2

    :try_start_2
    const-string v3, "Get Policy Success"

    invoke-static {v11, v3}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo2/i;->d:Ljava/lang/Object;

    check-cast v3, Lt9/a;

    if-eqz v3, :cond_1

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "rtb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo2/i;->d:Ljava/lang/Object;

    check-cast v0, Lt9/a;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3}, Lt9/a;->onResult(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v8}, Lo2/i;->f(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x4b1

    if-ne v6, v0, :cond_3

    const-string v0, "Result code : 1201, quota should be changed to zero"

    invoke-static {v11, v0}, Lv4/b;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "oq-3g"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "dq-3g"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "oq-w"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "dq-w"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv4/b;->O(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    :goto_1
    invoke-virtual {p0, v7}, Lo2/i;->d(Ljava/io/BufferedReader;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-object v6, v7

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    :goto_2
    :try_start_3
    const-string v0, "Fail to get Policy"

    invoke-static {v0}, Lv4/b;->u(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0, v6}, Lo2/i;->d(Ljava/io/BufferedReader;)V

    move v4, v5

    :goto_3
    iget-object v0, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v3, "dom"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v4, v5, :cond_4

    if-nez v0, :cond_4

    iget-object p0, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return v4

    :goto_4
    move-object v7, v6

    :goto_5
    invoke-virtual {p0, v7}, Lo2/i;->d(Ljava/io/BufferedReader;)V

    throw v0
.end method

.method public final b()Lc3/f;
    .locals 7

    new-instance v6, Lc3/f;

    iget-object v0, p0, Lo2/i;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/accounts/Account;

    iget-object v0, p0, Lo2/i;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ll/c;

    iget-object v0, p0, Lo2/i;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lo2/i;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Lo2/i;->c:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lo3/a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc3/f;-><init>(Landroid/accounts/Account;Ll/c;Ljava/lang/String;Ljava/lang/String;Lo3/a;)V

    return-object v6
.end method

.method public final c()Lm5/a;
    .locals 7

    new-instance v6, Lm5/a;

    iget-object v0, p0, Lo2/i;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lo2/i;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lo2/i;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lo2/i;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lm5/b;

    iget-object p0, p0, Lo2/i;->c:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lm5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm5/b;Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)V

    return-object v6
.end method

.method public final d(Ljava/io/BufferedReader;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    iget-object p0, p0, Lo2/i;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    const-string v0, "Failed to clear."

    iget-object v1, p0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v1, Lqa/a;

    check-cast v1, Lxa/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v1, Lxa/b;->a:Lva/a;

    check-cast v1, Lva/c;

    iget-object v2, v1, Lva/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, v1, Lva/c;->d:Lp1/u;

    invoke-virtual {v1}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-interface {v3}, La1/i;->v()I

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v1, v3}, Landroidx/room/f0;->release(La1/i;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    iget-object v1, p0, Lo2/i;->b:Ljava/lang/Object;

    check-cast v1, Lqa/c;

    check-cast v1, Lxa/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object v1, v1, Lxa/e;->a:Lva/g;

    check-cast v1, Lva/j;

    iget-object v2, v1, Lva/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, v1, Lva/j;->d:Lva/i;

    invoke-virtual {v1}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-interface {v3}, La1/i;->v()I

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v1, v3}, Landroidx/room/f0;->release(La1/i;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    iget-object v1, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v1, Lqa/b;

    check-cast v1, Lxa/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    iget-object v2, v1, Lxa/c;->a:Lva/m;

    invoke-virtual {v2}, Lva/m;->f()V

    iget-object v1, v1, Lxa/c;->b:Lva/e;

    invoke-virtual {v1}, Lva/e;->f()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    iget-object p0, p0, Lo2/i;->d:Ljava/lang/Object;

    check-cast p0, Lt6/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7
    iget-object p0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p0, Lva/f;

    invoke-virtual {p0}, Lva/f;->f()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    invoke-direct {v1, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    throw p0

    :catch_1
    move-exception p0

    invoke-static {v0, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    :try_start_8
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v1, v3}, Landroidx/room/f0;->release(La1/i;)V

    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception p0

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;

    const-string v1, "Failed to put seal."

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;

    throw p0

    :catchall_1
    move-exception p0

    :try_start_9
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v1, v3}, Landroidx/room/f0;->release(La1/i;)V

    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception p0

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;

    const-string v1, "Failed to remove all."

    invoke-direct {v0, v1, p0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final f(Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "rint"

    const-string v1, "lgt"

    const-string v2, "bat-uri"

    const-string v3, "uri"

    const-string v4, "dom"

    const-string v5, "dq-w"

    const-string v6, "oq-w"

    const-string v7, "dq-3g"

    const-string v8, "oq-3g"

    const-string v9, "dq-3g: "

    const-string v10, "https://"

    :try_start_0
    iget-object p0, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    mul-int/lit16 v11, v11, 0x400

    invoke-interface {p0, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    mul-int/lit16 v11, v11, 0x400

    invoke-interface {p0, v7, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    mul-int/lit16 v11, v11, 0x400

    invoke-interface {p0, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    mul-int/lit16 v11, v11, 0x400

    invoke-interface {p0, v5, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v4, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v3, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v2, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "policy_received_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-interface {p0, v0, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->setDomain(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dq-w: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", oq-3g: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", oq-w: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to save policy"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv4/b;->O(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[GetPolicyClient] "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final g(Ll2/a;)V
    .locals 8

    new-instance v3, Lcom/google/firebase/concurrent/h;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    iget-object v0, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v0, Lo2/q;

    new-instance v1, Lo2/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo2/i;-><init>(I)V

    iget-object v2, p0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v2, Lo2/j;

    if-eqz v2, :cond_4

    iput-object v2, v1, Lo2/i;->a:Ljava/lang/Object;

    iput-object p1, v1, Lo2/i;->e:Ljava/lang/Object;

    iget-object p1, p0, Lo2/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    iput-object p1, v1, Lo2/i;->b:Ljava/lang/Object;

    iget-object p1, p0, Lo2/i;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/concurrent/h;

    if-eqz p1, :cond_2

    iput-object p1, v1, Lo2/i;->d:Ljava/lang/Object;

    iget-object p0, p0, Lo2/i;->c:Ljava/lang/Object;

    check-cast p0, Ll2/c;

    if-eqz p0, :cond_1

    iput-object p0, v1, Lo2/i;->c:Ljava/lang/Object;

    const-string p0, ""

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, v1, Lo2/i;->a:Ljava/lang/Object;

    check-cast p0, Lo2/j;

    iget-object p1, v1, Lo2/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v1, Lo2/i;->e:Ljava/lang/Object;

    check-cast v2, Ll2/a;

    iget-object v4, v1, Lo2/i;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/firebase/concurrent/h;

    iget-object v1, v1, Lo2/i;->c:Ljava/lang/Object;

    check-cast v1, Ll2/c;

    check-cast v0, Lo2/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Ll2/a;->b:Lcom/google/android/datatransport/Priority;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lo2/j;->a()Lp1/v;

    move-result-object v6

    iget-object v7, p0, Lo2/j;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lp1/v;->n(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lp1/v;->o(Lcom/google/android/datatransport/Priority;)V

    iget-object p0, p0, Lo2/j;->b:[B

    iput-object p0, v6, Lp1/v;->c:Ljava/lang/Object;

    invoke-virtual {v6}, Lp1/v;->g()Lo2/j;

    move-result-object p0

    new-instance v5, Lva/m;

    invoke-direct {v5}, Lva/m;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lva/m;->f:Ljava/lang/Object;

    iget-object v6, v0, Lo2/r;->a:Lv2/a;

    check-cast v6, Lv2/b;

    invoke-virtual {v6}, Lv2/b;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lva/m;->d:Ljava/lang/Object;

    iget-object v6, v0, Lo2/r;->b:Lv2/a;

    check-cast v6, Lv2/b;

    invoke-virtual {v6}, Lv2/b;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lva/m;->e:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Lva/m;->l(Ljava/lang/String;)V

    new-instance p1, Lo2/m;

    iget-object v2, v2, Ll2/a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lcom/google/firebase/concurrent/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {p1, v1, v2}, Lo2/m;-><init>(Ll2/c;[B)V

    invoke-virtual {v5, p1}, Lva/m;->k(Lo2/m;)V

    const/4 p1, 0x0

    iput-object p1, v5, Lva/m;->b:Ljava/lang/Object;

    invoke-virtual {v5}, Lva/m;->b()Lo2/h;

    move-result-object v4

    iget-object p1, v0, Lo2/r;->c:Lr2/d;

    check-cast p1, Lr2/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lr2/a;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lr2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p1, Lr2/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null encoding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transformer"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transportName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transportContext"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lo2/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lo2/i;->c:Ljava/lang/Object;

    sget-object v1, Lw9/a;->a:Lf9/b;

    iget-object v1, v1, Lf9/b;->b:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v0, p0, Lo2/i;->c:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lo2/i;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p0, p0, Lo2/i;->c:Ljava/lang/Object;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Fail to get Policy"

    invoke-static {p0}, Lv4/b;->u(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
