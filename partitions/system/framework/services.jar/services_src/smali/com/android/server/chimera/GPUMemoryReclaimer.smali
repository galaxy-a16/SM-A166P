.class public Lcom/android/server/chimera/GPUMemoryReclaimer;
.super Ljava/lang/Object;
.source "GPUMemoryReclaimer.java"


# static fields
.field public static FEATURE_ENABLED:Z

.field public static INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public static final IS_SHIP_BUILD:Z

.field public static __Async:Ljava/lang/Boolean;

.field public static __EnabledSwapIn:Ljava/lang/Boolean;

.field public static __EnabledSwapOut:Ljava/lang/Boolean;

.field public static __MaxReclaimSize:J

.field public static __VendorPluginName:Ljava/lang/String;


# instance fields
.field public final mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

.field public mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

.field public mSwapInThread:Lcom/android/server/ServiceThread;

.field public mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;

.field public mSwapOutThread:Lcom/android/server/ServiceThread;

.field public final mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

.field public mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSwapInHandler(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwapInThread(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/ServiceThread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwapOutHandler(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSwapOutThread(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/ServiceThread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUtils(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVendorPlugin(Lcom/android/server/chimera/GPUMemoryReclaimer;)Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minit(Lcom/android/server/chimera/GPUMemoryReclaimer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitAsyncThreads(Lcom/android/server/chimera/GPUMemoryReclaimer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->initAsyncThreads()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetFEATURE_ENABLED()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetIS_SHIP_BUILD()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->IS_SHIP_BUILD:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfput__Async(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfput__EnabledSwapIn(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfput__EnabledSwapOut(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfput__VendorPluginName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->IS_SHIP_BUILD:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;

    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer$Dump-IA;)V

    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer$Utils-IA;)V

    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    invoke-virtual {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->init()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;
    .locals 2

    const-class v0, Lcom/android/server/chimera/GPUMemoryReclaimer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-direct {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer;-><init>()V

    sput-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;

    :cond_0
    sget-object v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->INSTANCE:Lcom/android/server/chimera/GPUMemoryReclaimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getMaxReclaimSize()J
    .locals 4

    sget-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.max_size"

    const-wide/32 v1, 0x20000000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    :cond_0
    sget-wide v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__MaxReclaimSize:J

    return-wide v0
.end method

.method public static final getVendorPluginName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.vendor_plugin"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__VendorPluginName:Ljava/lang/String;

    return-object v0
.end method

.method public static final isAsync()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.async"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__Async:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final isEnabledSwapIn()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled_swap_in"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapIn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final isEnabledSwapOut()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.sys.kernelmemory.gmr.enabled_swap_out"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->__EnabledSwapOut:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mDump:Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->run(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final init()V
    .locals 5

    const-string v0, "GMR"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "init start"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    if-nez v2, :cond_0

    const-string p0, "feature disabled"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "feature enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Configurations"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  feature enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  vendor_plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getVendorPluginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  enabled_swap_out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  enabled_swap_in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  async: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getVendorPluginName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "kgsl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;

    invoke-direct {v3, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    iput-object v3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "sgpu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;

    invoke-direct {v3, p0, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$SGPUPlugin;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V

    iput-object v3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer;->initAsyncThreads()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    const-string p0, "init success"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vendor_plugin is not defined or invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    sput-boolean v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    :goto_2
    return-void
.end method

.method public final initAsyncThreads()V
    .locals 5

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v3, "GMRSwapInThread"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v4}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v3, "GMRSwapOutThread"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;-><init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    invoke-static {p0, v4}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_2
    return-void
.end method

.method public onOomAdjChanged(ILjava/lang/String;IIZZ)V
    .locals 5

    const-string v0, "GMR"

    :try_start_0
    sget-boolean v1, Lcom/android/server/chimera/GPUMemoryReclaimer;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-gtz p1, :cond_1

    return-void

    :cond_1
    if-eq p3, p4, :cond_6

    const/16 v1, 0x3e7

    const/16 v2, 0x33e

    const-string v3, " "

    if-lt p4, v2, :cond_3

    if-gt p4, v1, :cond_3

    if-nez p3, :cond_3

    if-eqz p6, :cond_3

    :try_start_1
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapIn()Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_2

    iget-object p6, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    if-eqz p6, :cond_2

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fg_async : "

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, p6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p6, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapInHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;

    invoke-virtual {p6, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapInHandler;->swapInAsync(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fg : "

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, p6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p6, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    invoke-virtual {p6, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapIn(ILjava/lang/String;)I

    :cond_3
    :goto_0
    const/16 p6, 0x2bc

    if-ne p4, p6, :cond_6

    if-lt p3, v2, :cond_6

    if-gt p3, v1, :cond_6

    if-eqz p5, :cond_6

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isEnabledSwapOut()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->isAsync()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bg_async : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mSwapOutHandler:Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$SwapOutHandler;->swapOutAsync(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bg : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapOut(ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to handle onOomAdjChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method
