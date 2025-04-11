.class public final Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
.super Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;
.source "ThreatDefenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final BRAKET_END_STRING:Ljava/lang/String; = "\\)"

.field static final BRAKET_START_STRING:Ljava/lang/String; = "\\("

.field public static final DEBUG:Z

.field static final RESTRICTED_CHAR_LIST:[Ljava/lang/String;

.field static final SENSITIVE_PROCESS_PROC_LEN_LIST:[I

.field static final SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

.field static final SENSTIVE_PROCESS_PROC_POSITION:[I

.field public static final TAG:Ljava/lang/String;

.field public static final sAllowedProcRules:Ljava/util/Hashtable;

.field public static final sAllowedProcessProcRules:Ljava/util/Hashtable;

.field public static final sLock:Ljava/lang/Object;

.field public static sProcessIds:Landroid/util/SparseArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public mTimer:Ljava/util/Timer;

.field public final mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmKnoxAnalytics(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetPackageRules(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->resetPackageRules()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsAllowedProcRules()Ljava/util/Hashtable;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsAllowedProcessProcRules()Ljava/util/Hashtable;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 52
    const-class v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 76
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    const-string/jumbo v0, "stat"

    .line 81
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    const/16 v0, 0x34

    .line 86
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    const-string v0, "*"

    const-string v1, "."

    const-string v2, ";"

    .line 102
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    .line 133
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x1c
        0x1d
        0x1e
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;-><init>()V

    .line 142
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 177
    new-instance v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;-><init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimerTask:Ljava/util/TimerTask;

    .line 687
    new-instance v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;-><init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v1, "Start ThreatDefenseService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->initIntervalTasks()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->initReceiver()V

    return-void
.end method


# virtual methods
.method public final enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public final getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getProcessId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 241
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "ContextInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    if-eqz p2, :cond_6

    .line 249
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    .line 253
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->updateProcessIds()V

    const-string p0, "all"

    .line 257
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    move p0, v0

    .line 258
    :goto_0
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_4

    .line 259
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v0

    .line 263
    :goto_1
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p0, v2, :cond_4

    .line 264
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 270
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p2, p0, [I

    :goto_2
    if-ge v0, p0, :cond_5

    .line 274
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-object p2

    :catchall_0
    move-exception p0

    .line 270
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method public hasPackageRules(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 420
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 422
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v0, "Get package error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 427
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 429
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v1

    :catch_0
    move-exception p0

    .line 432
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_2
    return p1
.end method

.method public hasRestrictCharacter(Ljava/lang/String;)Z
    .locals 4

    .line 579
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 580
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 626
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p0

    const/4 v1, 0x0

    .line 629
    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/high16 v2, 0x8000000

    .line 628
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasMultipleSigners"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-nez p0, :cond_1

    .line 647
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "getApkContentsSigners() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 650
    :cond_1
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    if-nez p2, :cond_2

    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 661
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "Signature check failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 652
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "Get package signature failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    .line 636
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid package : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public final initIntervalTasks()V
    .locals 11

    .line 160
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/Timer;

    const-string v1, "MTDL_Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 164
    :cond_0
    sget-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    const-wide/32 v1, 0x5265c00

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sys.mtdl.interval"

    .line 165
    invoke-static {v0, v1, v2}, Landroid/os/SemSystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v1, "Custom interval applied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v1, 0xea60

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    .line 173
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    iget-object v6, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v7, 0x0

    move-wide v9, v1

    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 174
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer Scheduled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initReceiver()V
    .locals 2

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v1, "package"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    if-nez p1, :cond_0

    .line 548
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "Get package name failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x65

    return p0

    .line 552
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Denied proc = "

    if-eqz v0, :cond_1

    .line 553
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reason : Restrict Character"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x67

    return p0

    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    const/16 v2, -0x69

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 559
    invoke-static {p2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " reason : Symbolic Link"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 564
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid path p = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", err = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 569
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProcRules(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    if-gez p0, :cond_3

    .line 571
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Denied proc : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", errno="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return p0
.end method

.method public final isAllowedProcRules(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    .line 440
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    if-eqz p3, :cond_0

    .line 444
    :try_start_0
    sget-object p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 446
    :cond_0
    sget-object p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 449
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const/16 v1, -0x66

    if-nez p3, :cond_1

    .line 450
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Please set package rules first : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 453
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-eqz p3, :cond_4

    .line 456
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 459
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not allowed proc : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x67

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 467
    :cond_4
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No rules : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 472
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    const/16 v1, -0x68

    goto :goto_1

    :catch_1
    move-exception p0

    .line 469
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v1, -0x65

    :goto_1
    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final notifyToPackages()V
    .locals 2

    .line 682
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v1, "Send broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public procReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "IOException"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 203
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "ContextInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 208
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    .line 210
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    if-gez p0, :cond_1

    return-object v1

    .line 214
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "/proc/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 219
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 231
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v1, p2

    goto :goto_5

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_6

    :catch_3
    move-exception p2

    move-object p0, v1

    goto :goto_1

    :catch_4
    move-exception p2

    move-object p0, v1

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p1, v1

    goto :goto_6

    :catch_5
    move-exception p2

    move-object p0, v1

    move-object p1, p0

    .line 225
    :goto_1
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p0, :cond_2

    .line 229
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :cond_2
    if-eqz p1, :cond_4

    .line 231
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_5

    :catch_6
    move-exception p2

    move-object p0, v1

    move-object p1, p0

    .line 223
    :goto_2
    :try_start_6
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v3, "SecurityException"

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p0, :cond_3

    .line 229
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_7
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 231
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    .line 233
    :goto_4
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_5
    return-object v1

    :catchall_2
    move-exception p2

    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_5

    .line 229
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_8
    move-exception p0

    goto :goto_8

    :cond_5
    :goto_7
    if-eqz p1, :cond_6

    .line 231
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    .line 233
    :goto_8
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :cond_6
    :goto_9
    throw p2
.end method

.method public processProcReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const-string v0, "IOException"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 282
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "ContextInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 285
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 286
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    .line 288
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-gez p1, :cond_1

    return-object v1

    .line 294
    :cond_1
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    array-length v2, p1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v7, p1, v5

    .line 295
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 301
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    array-length p1, p1

    if-le v6, p1, :cond_4

    .line 302
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Get sensitive proc failed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    if-ge p3, v3, :cond_5

    return-object v1

    .line 311
    :cond_5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 317
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 319
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    .line 322
    :try_start_3
    invoke-virtual {p0, p3, v6}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    .line 331
    :cond_6
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 333
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception p0

    .line 335
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_8

    :catch_3
    move-exception p0

    move-object p3, v1

    :goto_3
    move-object v1, p1

    goto :goto_5

    :catch_4
    move-exception p0

    move-object p3, v1

    :goto_4
    move-object v1, p1

    goto :goto_6

    :catch_5
    move-exception p0

    move-object p3, v1

    goto :goto_5

    :catch_6
    move-exception p0

    move-object p3, v1

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p2, v1

    goto :goto_8

    :catch_7
    move-exception p0

    move-object p2, v1

    move-object p3, p2

    .line 327
    :goto_5
    :try_start_5
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_7

    .line 331
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz p2, :cond_9

    .line 333
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_8
    move-exception p0

    move-object p2, v1

    move-object p3, p2

    .line 325
    :goto_6
    :try_start_7
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v2, "SecurityException"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_8

    .line 331
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_8
    if-eqz p2, :cond_9

    .line 333
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_9
    :goto_7
    return-object p3

    :catchall_2
    move-exception p0

    :goto_8
    if-eqz v1, :cond_a

    .line 331
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_9

    :catch_9
    move-exception p1

    goto :goto_a

    :cond_a
    :goto_9
    if-eqz p2, :cond_b

    .line 333
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_b

    .line 335
    :goto_a
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    :cond_b
    :goto_b
    throw p0
.end method

.method public removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_b

    const-string v0, " "

    .line 481
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "("

    .line 482
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 487
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    aget v2, v1, p2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "\\("

    .line 488
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 491
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    const/4 v5, 0x0

    .line 493
    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v7, 0x1

    .line 494
    aget-object v4, v4, v7

    const-string v8, "\\)"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 497
    array-length v8, v4

    if-ne v8, v6, :cond_1

    .line 498
    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 499
    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, p0

    :goto_0
    if-eqz v4, :cond_7

    .line 503
    array-length v8, v4

    aget p2, v1, p2

    sub-int/2addr p2, v6

    if-ne v8, p2, :cond_7

    .line 505
    array-length p0, v4

    move p1, v5

    :goto_1
    if-ge p1, p0, :cond_2

    aget-object p2, v4, p1

    add-int/lit8 v1, v6, 0x1

    .line 506
    aput-object p2, v3, v6

    add-int/lit8 p1, p1, 0x1

    move v6, v1

    goto :goto_1

    .line 523
    :cond_2
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    array-length p1, p0

    move p2, v5

    :goto_2
    const-string v1, ""

    if-ge p2, p1, :cond_4

    aget v4, p0, p2

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v2, :cond_3

    .line 528
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 531
    :cond_3
    aput-object v1, v3, v4

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 533
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    if-ge v5, v2, :cond_6

    .line 534
    aget-object p1, v3, v5

    .line 535
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_5

    .line 537
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 540
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 509
    :cond_7
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove sensitive data failed, pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensitive data result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v4, :cond_9

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remained len="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object p0

    .line 519
    :cond_a
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid format line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 483
    :cond_b
    :goto_6
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid argument : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final resetPackageRules()V
    .locals 4

    .line 668
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 670
    sget-boolean p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 671
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v0, "Skip!! No rules"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 676
    :cond_1
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 677
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 678
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->notifyToPackages()V

    return-void
.end method

.method public setPackageRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 7

    if-eqz p2, :cond_9

    .line 343
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 347
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x65

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string/jumbo v1, "sys.mtdl.start"

    const/4 v2, 0x0

    .line 353
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "true"

    .line 355
    invoke-static {v1, v3}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "set system property failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, -0x6c

    .line 364
    :try_start_0
    new-instance v3, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    invoke-direct {v3, p2}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 367
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string p1, "Signature verification failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 371
    :cond_3
    new-instance v3, Lcom/android/server/enterprise/threatdefense/RuleParser;

    invoke-direct {v3, p2}, Lcom/android/server/enterprise/threatdefense/RuleParser;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackagePublicSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 376
    :cond_4
    new-instance p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 378
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->getPolicyVersion()I

    move-result p0

    .line 380
    sget-object v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app/rufs version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, p0, :cond_5

    const/16 p0, -0x64

    return p0

    .line 385
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package rules. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 390
    :cond_6
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replace proc rules : "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_7
    sget-object p2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replace process proc rules : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcessProcList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 407
    sget-object p1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Initialize json object failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, -0x6b

    goto :goto_0

    :catch_2
    move-exception p0

    .line 404
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return v0

    :catch_3
    move-exception p0

    .line 401
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 p0, -0x68

    return p0

    :cond_9
    :goto_1
    const/16 p0, -0x6a

    return p0
.end method

.method public systemReady()V
    .locals 0

    .line 0
    return-void
.end method

.method public final updateProcessIds()V
    .locals 12

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 589
    new-instance p0, Ljava/io/File;

    const-string v2, "/proc/"

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 595
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 596
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 597
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 598
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_1

    aget-object v7, p0, v6

    .line 599
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "^[0-9]+"

    .line 600
    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 603
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/String;

    invoke-static {v7, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    new-array v9, v4, [Ljava/nio/file/LinkOption;

    .line 605
    invoke-static {v7, v9}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    move v8, v4

    .line 609
    :goto_1
    :try_start_3
    sget-object v9, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v7

    move v8, v4

    .line 607
    :goto_2
    sget-object v9, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-lez v8, :cond_0

    if-eqz v5, :cond_0

    .line 612
    sget-object v7, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-interface {v5}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 617
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 619
    sget-object p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update PIDs took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 617
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
