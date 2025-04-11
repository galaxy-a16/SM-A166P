.class public Lcom/android/server/wm/RefreshRatePolicyLogger;
.super Ljava/lang/Object;
.source "RefreshRatePolicyLogger.java"


# instance fields
.field public mRefreshRateHistories:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$wGyTyj6ru6XWfWJ4bFulWAfjKtk(Ljava/io/PrintWriter;Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/RefreshRatePolicyLogger;->lambda$dump$0(Ljava/io/PrintWriter;Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    const/16 v3, 0xf

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RefreshRatePolicyLogger;->refreshRateHistoryTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;-><init>(Lcom/android/server/wm/RefreshRatePolicyLogger;ILjava/lang/String;)V

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/io/PrintWriter;Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< PreferredModeHistory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->-$$Nest$fgetmTag(Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->-$$Nest$fgetmHistory(Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)Lcom/samsung/android/core/SystemHistory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/core/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "RefreshRatePolicy History"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/server/wm/RefreshRatePolicyLogger$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/RefreshRatePolicyLogger$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public refreshRateHistoryTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Max"

    return-object p0

    :cond_1
    const-string p0, "Min"

    return-object p0

    :cond_2
    const-string p0, "ModeId"

    return-object p0
.end method

.method public update(Lcom/android/server/wm/WindowState;IFI)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->update(Lcom/android/server/wm/WindowState;IF)V

    :cond_0
    return-void
.end method
