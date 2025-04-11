.class public Lcom/android/server/wm/OneHandOpPolicy;
.super Ljava/lang/Object;
.source "OneHandOpPolicy.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBootCompleted:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mHasOneHandOpSpec:Z

.field public mIsInputFilterRegistered:Z

.field public mIsOneHandOpEnabled:Z

.field public mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field public mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field public mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

.field public mReasonToStart:I

.field public mRestartRunnable:Ljava/lang/Runnable;

.field public mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$9aSgMzfQ1ejG2xXFb9f5oo2vofg(Lcom/android/server/wm/OneHandOpPolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$stopService$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$BbehN5o9_3tLa2u_SBpMZbEPXiY(Lcom/android/server/wm/OneHandOpPolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIQl72XDg-ZyMP8c8YKP8ApKDJc(Lcom/android/server/wm/OneHandOpPolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$systemBooted$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$b6TZKUBSSrj0g38vSrP0HdN0c9M(Lcom/android/server/wm/OneHandOpPolicy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$startService$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ksbJCwd-LyU4cr7igwzDRkXaJPM(Lcom/android/server/wm/OneHandOpPolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/OneHandOpPolicy;->lambda$screenTurnedOff$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/OneHandOpPolicy;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/OneHandOpPolicy;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestartRunnable(Lcom/android/server/wm/OneHandOpPolicy;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mRestartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/OneHandOpPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/OneHandOpPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    .line 66
    iput-boolean p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    .line 82
    iput-boolean p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 83
    iput-boolean p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsInputFilterRegistered:Z

    .line 84
    new-instance p3, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;-><init>(Lcom/android/server/wm/OneHandOpPolicy;Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor-IA;)V

    iput-object p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    .line 351
    new-instance p3, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    iput-object p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mRestartRunnable:Ljava/lang/Runnable;

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->isOneHandOpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$screenTurnedOff$1()V
    .locals 4

    .line 139
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startService$2(I)V
    .locals 4

    .line 159
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "StartByHomeKey"

    .line 164
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$stopService$3()V
    .locals 4

    .line 179
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "ForceHide"

    const/4 v2, 0x1

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$systemBooted$0()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    return-void
.end method

.method public static startReasonToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 370
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RESTART_ONE_HAND_OP_SERVICE"

    return-object p0

    :cond_1
    const-string p0, "HOME_KEY_DOUBLE"

    return-object p0

    :cond_2
    const-string p0, "SETTING_OBSERVER"

    return-object p0

    :cond_3
    const-string p0, "SYSTEM_BOOTED"

    return-object p0

    :cond_4
    const-string p0, "NONE"

    return-object p0
.end method


# virtual methods
.method public changeDisplayScaleLocked(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V
    .locals 8

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    const-string v1, "OneHandOpController"

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDisplayScale, mHasOneHandOpSpec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", offsetX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", offsetY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", registerInput="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "OneHandOpController"

    const-string p1, "changeDisplayScale, display is null"

    .line 223
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 227
    :cond_0
    :try_start_1
    iget v2, p1, Landroid/view/MagnificationSpec;->scale:F

    const/4 v3, 0x0

    cmpg-float v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 228
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 230
    iget-boolean v3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    if-eqz v3, :cond_4

    .line 232
    iget v3, v2, Landroid/view/MagnificationSpec;->scale:F

    iget v6, p1, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 233
    :goto_0
    iget v6, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v7, p1, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget v6, p1, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    const-string p0, "OneHandOpController"

    const-string p1, "changeDisplayScale, the requested scale & offset are same"

    .line 236
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4
    :try_start_2
    const-string p0, "OneHandOpController"

    const-string p1, "changeDisplayScale, other requested spec exists"

    .line 241
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 245
    :cond_5
    :try_start_3
    iput-boolean v5, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 246
    iget-object v2, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    if-eqz p2, :cond_7

    .line 250
    iget-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, p3}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 251
    iput-boolean v5, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsInputFilterRegistered:Z

    goto :goto_1

    .line 254
    :cond_6
    iget-boolean p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    if-eqz p3, :cond_8

    .line 255
    iget-object p3, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p3, v2, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 257
    iput-boolean v4, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    if-eqz p2, :cond_7

    .line 259
    iget-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 260
    iput-boolean v4, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsInputFilterRegistered:Z

    :cond_7
    :goto_1
    move v4, v5

    :cond_8
    if-eqz v4, :cond_9

    .line 265
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 266
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 268
    :cond_9
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 375
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsOneHandOpEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 376
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasOneHandOpSpec="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 378
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsInputFilterRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsInputFilterRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 380
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mReasonToStart="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    invoke-static {v0}, Lcom/android/server/wm/OneHandOpPolicy;->startReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOneHandOpController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mOneHandOpHandler="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public hasOneHandOpSpec()Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    return p0
.end method

.method public final isDeviceProvisioned()Z
    .locals 2

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isOneHandOpEnabled()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    return p0
.end method

.method public registerOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 277
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->registerWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 4

    .line 128
    sget-boolean v0, Lcom/android/server/wm/OneHandOpPolicy;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screenTurnedOff(), mIsOneHandOpEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasOneHandOpController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasOneHandOpHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemBooted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandOpController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public settingChanged(Z)V
    .locals 1

    .line 93
    iput-boolean p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    .line 94
    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mBootCompleted:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->stopService()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startService(I)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startService() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/OneHandOpPolicy;->startReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 153
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandOpController"

    .line 152
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/OneHandOpPolicy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopService()V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopService(), caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandOpController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 175
    iput v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public systemBooted()V
    .locals 2

    .line 113
    sget-boolean v0, Lcom/android/server/wm/OneHandOpPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneHandOpController"

    const-string/jumbo v1, "systemBooted()"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mBootCompleted:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/OneHandOpPolicy;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 122
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public unregisterOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->unregisterWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    :cond_0
    return-void
.end method
