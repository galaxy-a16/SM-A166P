.class public Lcom/samsung/android/kmxservice/trustchain/SAChainLog;
.super Lcom/samsung/android/kmxservice/common/analytics/SALog;
.source "SourceFile"


# static fields
.field private static final BACKGROUND_DEFAULT:Z = true

.field private static final DIMENSION_KEY_ACTIVATE:Ljava/lang/String; = "Activation Information"

.field private static final DIMENSION_KEY_DEACTIVATE:Ljava/lang/String; = "Deactivation Status"

.field private static final DIMENSION_KEY_DESTROY:Ljava/lang/String; = "Chain Destroy Status"

.field private static final DIMENSION_KEY_TRANSACTION:Ljava/lang/String; = "Transaction Information"

.field private static final EVENT_ACTIVATE:Ljava/lang/String; = "TC0001"

.field private static final EVENT_DEACTIVATE:Ljava/lang/String; = "TC0002"

.field private static final EVENT_DESTROY:Ljava/lang/String; = "TC0004"

.field private static final EVENT_TRANSACTION:Ljava/lang/String; = "TC0003"

.field private static final PAGE_TRUSTCHAIN:Ljava/lang/String; = "TC101"

.field private static sApplication:Landroid/app/Application;

.field private static sMemberId:Ljava/lang/String;

.field private static sModelName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->getKeyValueMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "TC101"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/kmxservice/common/analytics/SALog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private static getKeyValueMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static varargs getSALogValue([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sendSALogActivate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sModelName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const/4 p0, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->getSALogValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;

    const-string p2, "TC0001"

    const-string v0, "Activation Information"

    invoke-direct {p1, p2, v0, p0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    invoke-static {p1, p0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public static sendSALogDeactivate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sModelName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const/4 p0, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->getSALogValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;

    const-string p2, "TC0002"

    const-string v0, "Deactivation Status"

    invoke-direct {p1, p2, v0, p0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    invoke-static {p1, p0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public static sendSALogDestroy(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sModelName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const/4 p0, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->getSALogValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;

    const-string p2, "TC0004"

    const-string v0, "Chain Destroy Status"

    invoke-direct {p1, p2, v0, p0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    invoke-static {p1, p0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public static sendSALogTransaction(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sModelName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->getSALogValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;

    const-string v0, "TC0003"

    const-string v1, "Transaction Information"

    invoke-direct {p1, v0, v1, p0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    invoke-static {p1, p0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->sendLog(Lcom/samsung/android/kmxservice/common/analytics/SALog;Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public static setSALoggingConfigs(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sApplication:Landroid/app/Application;

    sput-object p1, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sMemberId:Ljava/lang/String;

    sput-object p2, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sModelName:Ljava/lang/String;

    return-void
.end method
