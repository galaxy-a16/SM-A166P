.class public Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "KmxServiceSALogging"

.field private static sSAInstance:Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;
    .locals 3

    const-class v0, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;->sSAInstance:Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;

    if-nez v1, :cond_0

    const-string v1, "KmxServiceSALogging"

    const-string v2, "KmxServiceSALogging instance was null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;->sSAInstance:Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;

    :cond_0
    sget-object v1, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;->sSAInstance:Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screenId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventDetail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KmxServiceSALogging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "det"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cd"

    const-string v3, "pn"

    if-eqz p1, :cond_4

    :try_start_0
    new-instance v4, Ls9/c;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ls9/c;-><init>(I)V

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3, p0}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Failure to build Log : Event id cannot be null"

    invoke-static {p0}, Lva/n;->O(Ljava/lang/String;)V

    :cond_1
    const-string p0, "en"

    invoke-virtual {v4, p0, p1}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 3
    invoke-static {v0}, Lv9/a;->i(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p0

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p0, p1}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v2, p0}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/16 p0, -0x270f

    cmp-long p0, p3, p0

    if-eqz p0, :cond_3

    const-string p0, "ev"

    .line 4
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_3
    invoke-static {}, Ls9/d;->a()Ls9/d;

    move-result-object p0

    invoke-virtual {v4}, Ls9/c;->l()Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ls9/c;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ls9/c;-><init>(I)V

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p0, "Failure to set Screen View : Screen name cannot be null."

    invoke-static {p0}, Lva/n;->O(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v3, p0}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_6

    .line 7
    invoke-static {v0}, Lv9/a;->i(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p0

    sget-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p0, p2}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_6
    invoke-static {}, Ls9/d;->a()Ls9/d;

    move-result-object p0

    invoke-virtual {p1}, Ls9/c;->l()Ljava/util/Map;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Ls9/d;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/kmxservice/common/analytics/KmxServiceSALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screenId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " customDimension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KmxServiceSALogging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ls9/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ls9/c;-><init>(I)V

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pn"

    invoke-virtual {v0, v2, p0}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Failure to build Log : Event id cannot be null"

    invoke-static {p0}, Lva/n;->O(Ljava/lang/String;)V

    :cond_1
    const-string p0, "en"

    invoke-virtual {v0, p0, p1}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Lv9/a;->i(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p0

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p0, p1}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cd"

    invoke-virtual {v0, p1, p0}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "et"

    .line 13
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lb0/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ls9/d;->a()Ls9/d;

    move-result-object p0

    invoke-virtual {v0}, Ls9/c;->l()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls9/d;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception occurred while SA logging"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
