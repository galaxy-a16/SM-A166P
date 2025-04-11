.class public Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/Dialog;
.source "UserSwitchingDialog.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisableAnimations:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mNeedToFreezeScreen:Z

.field public final mNewUser:Landroid/content/pm/UserInfo;

.field public final mOldUser:Landroid/content/pm/UserInfo;

.field public final mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field public final mSwitchingToSystemUserMessage:Ljava/lang/String;

.field public final mTraceCookie:I

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$46d9BoRJtTqjcM8cottzBm5qQrI(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startShowAnimation$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4kvCcthywnv_cZgqv79C7NwE1M8(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$dismiss$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IrY9YTrGw63IPylMImcoF9p34aQ(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UserSwitchingDialog;->lambda$animationWithTimeout$5(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L_Kc-AIVCaAWpkyo50Lq936k2Dk(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$show$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M2nD-Gv41vpgX01vzZkp7ts2CCo(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startShowAnimation$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k107midqQJmmArSAei3zi59AzBw(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$animationWithTimeout$6(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vrTwPB29kiJ7hei6b4-4TRDSAfw(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserSwitchingDialog;->lambda$startDismissAnimation$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    const v0, 0x103022f

    .line 95
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    .line 99
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    .line 100
    iput-object p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    const-string p1, "debug.usercontroller.disable_user_switching_dialog_animations"

    const/4 p4, 0x0

    .line 102
    invoke-static {p1, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    .line 104
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-nez p1, :cond_0

    .line 105
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserSwitchingDialog;->isUserSetupComplete(Landroid/content/pm/UserInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p4, 0x1

    :cond_0
    iput-boolean p4, p0, Lcom/android/server/am/UserSwitchingDialog;->mNeedToFreezeScreen:Z

    .line 106
    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    mul-int/lit16 p1, p1, 0x53e2

    iget p2, p3, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 108
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->inflateContent()V

    .line 109
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->configureWindow()V

    return-void
.end method

.method private synthetic lambda$animationWithTimeout$5(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 345
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 346
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$animationWithTimeout$6(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " animation not completed in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserSwitchingDialog"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$dismiss$1(Ljava/lang/Runnable;)V
    .locals 0

    .line 231
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    .line 232
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$show$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startFreezingScreen()V

    .line 220
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$startDismissAnimation$4(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "dismissAnimation"

    const/4 v1, 0x3

    .line 281
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 283
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$startShowAnimation$2(Ljava/lang/Runnable;)V
    .locals 2

    const-string/jumbo v0, "spinnerAnimation"

    const/4 v1, 0x2

    .line 266
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 268
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$startShowAnimation$3(Ljava/lang/Runnable;)V
    .locals 2

    const-string/jumbo v0, "showAnimation"

    const/4 v1, 0x1

    .line 262
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string/jumbo v0, "spinnerAnimation"

    const/4 v1, 0x2

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 265
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startProgressAnimation(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 4

    .line 342
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 343
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 349
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1, v1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1
.end method

.method public final asyncTraceBegin(Ljava/lang/String;I)V
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncTraceBegin-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserSwitchingDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    add-int/2addr p0, p2

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public final asyncTraceEnd(Ljava/lang/String;I)V
    .locals 4

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSwitchingDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    add-int/2addr p0, p2

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 364
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "asyncTraceEnd-"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final configureWindow()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x110

    .line 115
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x3

    .line 117
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x106000d

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x7da

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method public final defaultUserIcon(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 168
    invoke-static {p0, p1}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public dismiss()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->stopFreezingScreen()V

    const-string v0, "dialog"

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "UserSwitchingDialog"

    const-string v1, "dismiss called"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startDismissAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final getSpinnerAVD()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 1

    const v0, 0x10204c0

    .line 304
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 307
    instance-of v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 308
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextMessage()Ljava/lang/String;
    .locals 2

    .line 172
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x1040415

    goto :goto_0

    :cond_0
    const p0, 0x1040416

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    goto :goto_1

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 188
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x1040c7a

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final getUserIconRounded()Landroid/graphics/Bitmap;
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/server/am/UserSwitchingDialog;->defaultUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 154
    invoke-static {v0, p0}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 157
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 159
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 160
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 161
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    div-float/2addr v1, v5

    invoke-virtual {p0, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public inflateContent()V
    .locals 4

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x10901d3

    .line 127
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x102000b

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getTextMessage()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x1020006

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getUserIconRounded()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    const v0, 0x10204c0

    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 143
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz v1, :cond_2

    const/16 p0, 0x8

    .line 144
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_2
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 147
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v2, 0x1120026

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 148
    iget p0, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final isUserSetupComplete(Landroid/content/pm/UserInfo;)Z
    .locals 2

    .line 198
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public show()V
    .locals 2

    const-string v0, "dialog"

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 205
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public show(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "UserSwitchingDialog"

    const-string/jumbo v1, "show called"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->show()V

    .line 218
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->startShowAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V
    .locals 3

    const v0, 0x1020002

    .line 315
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 316
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/UserSwitchingDialog;->animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x12c

    .line 321
    invoke-virtual {p2, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 322
    new-instance p3, Lcom/android/server/am/UserSwitchingDialog$2;

    invoke-direct {p3, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$2;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 338
    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 317
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final startDismissAnimation(Ljava/lang/Runnable;)V
    .locals 3

    .line 274
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNeedToFreezeScreen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dismissAnimation"

    const/4 v1, 0x3

    .line 279
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 280
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    const-string p1, "dismiss"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    return-void

    .line 276
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final startFreezingScreen()V
    .locals 3

    .line 238
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNeedToFreezeScreen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "startFreezingScreen"

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->traceBegin(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->traceEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final startProgressAnimation(Ljava/lang/Runnable;)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getSpinnerAVD()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    .line 289
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "spinner"

    .line 293
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->animationWithTimeout(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 294
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 300
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    .line 290
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final startShowAnimation(Ljava/lang/Runnable;)V
    .locals 3

    .line 256
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string/jumbo v0, "showAnimation"

    const/4 v1, 0x1

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 261
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    const-string/jumbo p1, "show"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopFreezingScreen()V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNeedToFreezeScreen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "stopFreezingScreen"

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->traceBegin(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserSwitchingDialog;->traceEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final traceBegin(Ljava/lang/String;)V
    .locals 2

    .line 368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "traceBegin-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserSwitchingDialog"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x40

    .line 369
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public final traceEnd(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x40

    .line 373
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 374
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "traceEnd-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserSwitchingDialog"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
