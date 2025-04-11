.class public Lcom/android/server/am/GenAIReclaimMode;
.super Ljava/lang/Object;
.source "GenAIReclaimMode.java"


# static fields
.field public static FEATURE_ENABLED:Z = false

.field public static final IS_SHIP_BUILD:Z

.field public static final TAG:Ljava/lang/String; = "GenAIReclaimMode"


# instance fields
.field public mDHA:Lcom/android/server/am/DynamicHiddenApp;

.field public mIsModeOn:Z

.field public mIsModeOnLock:Ljava/lang/Object;

.field public mModeCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 19
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/GenAIReclaimMode;->IS_SHIP_BUILD:Z

    const-string v0, "genai_reclaim_mode"

    .line 21
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/GenAIReclaimMode;->FEATURE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/DynamicHiddenApp;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOn:Z

    .line 26
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOnLock:Ljava/lang/Object;

    .line 27
    iput v0, p0, Lcom/android/server/am/GenAIReclaimMode;->mModeCount:I

    .line 30
    iput-object p1, p0, Lcom/android/server/am/GenAIReclaimMode;->mDHA:Lcom/android/server/am/DynamicHiddenApp;

    .line 31
    sget-object p0, Lcom/android/server/am/GenAIReclaimMode;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "genai_reclaim_mode enable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/GenAIReclaimMode;->FEATURE_ENABLED:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkADJ(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;)V
    .locals 3

    .line 45
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-ge v0, v2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 52
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/GenAIReclaimMode;->decideModeOn(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-ge v0, v2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-gt v0, v1, :cond_4

    .line 54
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-ge v0, v2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p2

    if-le p2, v1, :cond_4

    .line 56
    :cond_3
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/GenAIReclaimMode;->decideModeOff(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final decideModeOff(Ljava/lang/String;)V
    .locals 4

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/am/GenAIReclaimMode;->isTriggeringProcess(Ljava/lang/String;)Z

    move-result p1

    .line 90
    iget-object v0, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOn:Z

    .line 93
    sget-boolean v2, Lcom/android/server/am/GenAIReclaimMode;->FEATURE_ENABLED:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 94
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOn:Z

    .line 96
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 98
    iget-boolean p0, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOn:Z

    if-nez p0, :cond_2

    .line 99
    sget-object p0, Lcom/android/server/am/GenAIReclaimMode;->TAG:Ljava/lang/String;

    const-string p1, "Gen-AI Reclaim Mode OFF"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->setGenAIReclaimMode(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final decideModeOn(Ljava/lang/String;)V
    .locals 3

    .line 69
    sget-boolean v0, Lcom/android/server/am/GenAIReclaimMode;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/GenAIReclaimMode;->isTriggeringProcess(Ljava/lang/String;)Z

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOn:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 77
    iput-boolean v2, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOn:Z

    .line 78
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 80
    iget-boolean p1, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOn:Z

    if-eqz p1, :cond_2

    .line 81
    sget-object p1, Lcom/android/server/am/GenAIReclaimMode;->TAG:Ljava/lang/String;

    const-string v0, "Gen-AI Reclaim Mode ON"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->setGenAIReclaimMode(I)V

    .line 83
    iget p1, p0, Lcom/android/server/am/GenAIReclaimMode;->mModeCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/am/GenAIReclaimMode;->mModeCount:I

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "== GenAIReclaimMode dump start =="

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/GenAIReclaimMode;->FEATURE_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/GenAIReclaimMode;->isModeOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/GenAIReclaimMode;->mModeCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    array-length p0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const-string v1, "Invalid command!"

    if-le p0, v0, :cond_2

    :try_start_1
    const-string p0, "enable"

    .line 113
    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p2

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 114
    sget-boolean p0, Lcom/android/server/am/GenAIReclaimMode;->IS_SHIP_BUILD:Z

    if-nez p0, :cond_0

    .line 115
    aget-object p0, p2, v0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/GenAIReclaimMode;->FEATURE_ENABLED:Z

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enable: set as "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/am/GenAIReclaimMode;->FEATURE_ENABLED:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p0, "== GenAIReclaimMode dump end =="

    .line 131
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public handleDiedProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 61
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/GenAIReclaimMode;->decideModeOff(Ljava/lang/String;)V

    return-void
.end method

.method public isModeOn()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/server/am/GenAIReclaimMode;->mIsModeOn:Z

    return p0
.end method

.method public final isTriggeringProcess(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.google.android.apps.messaging"

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
