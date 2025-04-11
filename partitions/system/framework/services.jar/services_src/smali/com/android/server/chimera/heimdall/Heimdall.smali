.class public Lcom/android/server/chimera/heimdall/Heimdall;
.super Ljava/lang/Object;
.source "Heimdall.java"


# static fields
.field public static SCAN_VERSION:I = 0x1


# instance fields
.field public DISABLED:Z

.field public final IS_SHIP_BUILD:Z

.field public KILL_DISABLED:Z

.field public mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

.field public mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

.field public mScpmManager:Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;


# direct methods
.method public static bridge synthetic -$$Nest$fputDISABLED(Lcom/android/server/chimera/heimdall/Heimdall;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessNextPhase(Lcom/android/server/chimera/heimdall/Heimdall;Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall;->processNextPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "persist.sys.heimdalld.disable"

    const-string v1, "false"

    .line 31
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    const-string/jumbo v0, "persist.sys.heimdalld.kill_disable"

    const-string v3, "0"

    .line 33
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    const-string/jumbo v0, "ro.product_ship"

    .line 41
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->IS_SHIP_BUILD:Z

    .line 50
    :try_start_0
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-direct {v0, p2, p3}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 51
    new-instance p3, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/os/Looper;Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler-IA;)V

    iput-object p3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 52
    new-instance p1, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;

    invoke-direct {p1, p0, p2}, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mScpmManager:Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;

    .line 54
    iget-boolean p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->setHeimdallKillDisabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Heimdall init failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 63
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DISABLED="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " KILL_DISABLED="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 64
    iget-boolean p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    if-nez p0, :cond_1

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SCAN_VERSION="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/chimera/heimdall/Heimdall;->SCAN_VERSION:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Heimdall"

    .line 281
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native readMemtrackMemory(I)[J
.end method


# virtual methods
.method public checkProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    move-result-object v0

    .line 76
    iput p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 77
    iput-object p2, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 78
    iput-object p3, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 80
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->requestNextPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "== heimdall dump start =="

    .line 234
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string p2, "Configurations"

    .line 238
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  feature enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    if-eqz p2, :cond_a

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  kill: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  SCAN_VERSION: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/chimera/heimdall/Heimdall;->SCAN_VERSION:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {p2, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->dumpKillStatus(Ljava/io/PrintWriter;)V

    .line 244
    iget-object p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {p2, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->dumpProcessList(Ljava/io/PrintWriter;)V

    const-string p2, "\nOthers"

    .line 245
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    if-eqz p2, :cond_a

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  The number of pending message in phase handler: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->getNumberOfPendingMessages()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 250
    :cond_3
    array-length v0, p2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_a

    .line 251
    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    if-nez v0, :cond_4

    goto :goto_1

    .line 253
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->IS_SHIP_BUILD:Z

    if-eqz v0, :cond_5

    const-string p0, "available in noship binary"

    .line 254
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "kill_disable"

    .line 257
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "persist.sys.heimdalld.kill_disable"

    if-eqz v0, :cond_6

    :try_start_1
    const-string p2, "1"

    .line 258
    invoke-static {v3, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    .line 260
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->setHeimdallKillDisabled()V

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "kill_enable"

    .line 261
    aget-object v4, p2, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p2, "0"

    .line 262
    invoke-static {v3, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput-boolean v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    .line 264
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->setHeimdallKillEnabled()V

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "spec"

    .line 265
    aget-object p2, p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "\nSpec list"

    .line 266
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->dumpSpecList(Ljava/io/PrintWriter;)V

    goto :goto_2

    :cond_8
    const-string p0, "Please input the correct heimdall option."

    .line 269
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    :goto_1
    const-string p0, "heimdall disabled"

    .line 252
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 274
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_2
    const-string p0, "== heimdall dump end =="

    .line 277
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final processNextPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 3

    .line 84
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->moveNextPhaseIfNotRetry()V

    .line 86
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0x40

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processStartPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processScanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processGcPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processRescanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processKillAndReportPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_5

    .line 111
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->recycle()V

    return-void

    .line 114
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result v0

    if-ne v0, v1, :cond_6

    return-void

    .line 117
    :cond_6
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->requestNextPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    return-void
.end method
