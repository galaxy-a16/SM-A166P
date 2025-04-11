.class public Lcom/android/server/multicontrol/MultiControlManagerService;
.super Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;
.source "MultiControlManagerService.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

.field public mAppProtocolVersion:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mHandler:Landroid/os/Handler;

.field public mInputFilter:Landroid/view/IInputFilter;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public mIsBootComplete:Z

.field public mIsMultiControlEnabled:Z

.field public mIsTriggerDetectionEnabled:Z

.field public mLocalService:Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mThread:Lcom/android/server/ServiceThread;

.field public mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

.field public mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInputFilter(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/view/IInputFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsBootComplete(Lcom/android/server/multicontrol/MultiControlManagerService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserSetupCompleteObserver(Lcom/android/server/multicontrol/MultiControlManagerService;Landroid/database/ContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeStates(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->initializeStates()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarting(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserStarting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopping(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserStopping(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserSwitching(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserSwitching(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocking(Lcom/android/server/multicontrol/MultiControlManagerService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserUnlocking(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiControl@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RAMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsMultiControlEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsTriggerDetectionEnabled:Z

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppProtocolVersion:I

    new-instance v1, Lcom/android/server/ServiceThread;

    const-string/jumbo v2, "multicontrol"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mHandler:Landroid/os/Handler;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mLocalService:Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-class v2, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerInternal;

    iput-object v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    new-instance v2, Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/multicontrol/MCTriggerManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    new-instance p1, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;

    invoke-direct {p1, p0, v0}, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/android/server/multicontrol/MultiControlManagerService$Receiver-IA;)V

    invoke-virtual {p1}, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;->register()V

    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mLocalService:Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    invoke-direct {p1, p0, v0}, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/android/server/multicontrol/MultiControlManagerService$LocalService-IA;)V

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mLocalService:Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    const-class p0, Lcom/samsung/android/multicontrol/MultiControlManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/multicontrol/MultiControlManagerService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    array-length p1, p3

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const-string p3, "-a"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "MultiControlManagerService (dumpsys multicontrol):"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/multicontrol/Log;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->dumpImpl(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_2
    return-void
.end method

.method public final dumpImpl(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mCurrentUserId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "Configuration"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_SIZE_FORCED"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "display_density_forced"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_DENSITY_FORCED"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCREEN_OFF_TIMEOUT"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHOW_IME_WITH_HARD_KEYBOARD"

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public enableTriggerDetection(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableTriggerDetection] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->enable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    const-string v0, "[enableTriggerDetection]"

    invoke-static {p1, v0, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public forceHideCursor(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    const-string v1, "in forceHideCursor"

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerInternal;->forceHideCursor(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getProtocolVersion()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string v1, "getProtocolVersion"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final initializeStates()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/multicontrol/MultiControlManagerService$1;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    return-void
.end method

.method public isAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string v2, "isAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isSystemReady()Z

    move-result p0

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isSystemReady()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemReady(), mIsBootComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFactoryBinary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isUserSetupComplete()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    const-string v0, "isUserSetupComplete()=false"

    invoke-static {p0, v0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public final onBootPhase(I)V
    .locals 2

    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onUserChanged(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->setCurrentUserId(I)V

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->initializeStates()V

    return-void
.end method

.method public final onUserStarting(I)V
    .locals 2

    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onUserStopped(I)V
    .locals 2

    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onUserStopping(I)V
    .locals 2

    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CurrentUser="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserChanged(I)V

    return-void
.end method

.method public final onUserUnlocking(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->onUserChanged(I)V

    :cond_1
    return-void
.end method

.method public resetInputFilter()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    return-void
.end method

.method public setCursorPosition(III)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setCursorPosition [displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerInternal;->setCursorPosition(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "setInputFilter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener;->onInstalled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setInteractive(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    const-string v1, "in setInteractive"

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerInternal;->setInteractive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMultiControlOutOfFocus(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setMultiControlOutOfFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerInternal;->setMultiControlOutOfFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "setProtocolVersion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppProtocolVersion:I

    return-void
.end method

.method public setTriggerThreshold(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTriggerThreshold] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->setTriggerThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/multicontrol/MultiControlManagerService;->TAG:Ljava/lang/String;

    const-string v0, "[setTriggerThreshold]"

    invoke-static {p1, v0, p0}, Lcom/android/server/multicontrol/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    const-string/jumbo v2, "setInputFilter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->unlinkListenerToDeath()V

    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;II)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopDeathChecker()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->unlinkListenerToDeath()V

    return-void
.end method

.method public final unlinkListenerToDeath()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    :cond_0
    return-void
.end method
