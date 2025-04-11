.class public Lcom/android/server/desktopmode/UiManager;
.super Ljava/lang/Object;
.source "UiManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBindServiceRunnable:Ljava/lang/Runnable;

.field public mBound:Z

.field public mChangingStandaloneMode:Z

.field public mConnectionBackoffAttempts:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field public final mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

.field public final mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

.field public mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mUnbindServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0589kAaICrY5v_9ly42Sg-wAf-U(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleRemoveNavBarIcon$22(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3YfRF9XQqVLgUfXIH5nDiANDuAA(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowOverlay$8(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3nKYZVoyOgQO94GJmmHPsj3CS0E(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$5Rc1BQEfH7-Xf71nh2zGYTYC5sM(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$setCurrentUserId$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AufEcNv6W1EGO3MFucQr1SnrufY(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowNotification$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fi90y6xKoqgqqpdMnw1Cbk76LgU(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleNavBarIcon$19(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HvU4n3At8aUXSix3hNf1KJ9zI6U(Lcom/android/server/desktopmode/UiManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->lambda$dismissOverlay$9(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$L0fBsjTwlJOvUuDG6j5xGsW1kzA(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$showOverlay$7(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NU5Oo9PjPW_fgXcWlQ01dIcxGUs(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowDialog$4(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OEC4Fr4feyHd_zsyGYOyEsdGjKc(Lcom/android/server/desktopmode/UiManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->lambda$dismissDialog$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$PTWQWfGN8RRMgVX3KpNsxptOCRs(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindServiceIfHasNoUiElement()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ro0ICsTJhYN0rkHIYQMBLNzu2t8(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    return-void
.end method

.method public static synthetic $r8$lambda$VGI0Z61ZUeqWxaW3h6dF2nXDPNA(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowNotification$13(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZLxcd6gfHGHW-SEZSwjFszJihTY(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$aGDZgt6Owv2vkXy73T51ys7g-58(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleNavBarIcon$18(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hpskKjlqvUYY6t8w0RKFFfjR1vk(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$finishActivity$25(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hwnQsU7uM6r1V2rPzQ49JF7ui6c(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowNotification$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$it7MTSfo_w1T-H-ZHCK5FKbJDqs(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleRemoveNotification$16(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kLUw1sS2gZ2lCi-fnoFtcuZlUiM(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$handleStartActivity$24(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nlVEeBZkZgcsP6TxJNlekYYFr2Q(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$startActivity$23(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pSfu3ygf8MGg5t3-44vTXDSCOJk(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$showDialog$3(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qfCcvhA5xEZ93sPoDgMIZpUY2p8(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$showNavBarIcon$17(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tATJudahwWEPz0JJyz09P9NK2X0(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleRemoveNotification$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tm2zK55q3-0YUW4z581xhmH3iHY(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$removeNavBarIcon$20(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$veqkVPbHB3BnHJoYD6gbiGNo8_M(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$showDialogOnUiService$5(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$we123GSNAGfLllb9RRvBPVxPbJw(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$removeNotification$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x3YWMmIz09J4ILUqXlDvepsS3Cg(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$showNotification$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJPFtYzL1TS4gWkcEXven9P24zg(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleRemoveNavBarIcon$21(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBindServiceRunnable(Lcom/android/server/desktopmode/UiManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/desktopmode/UiManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferredConnectionCallback(Lcom/android/server/desktopmode/UiManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiCommandHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingUiCommands(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/PendingUiCommands;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/desktopmode/UiManager;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionBackoffAttempts(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/desktopmode/UiManager;Lcom/samsung/android/desktopmode/IDesktopModeUiService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostUnbindServiceRunnable(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mretryConnectionWithBackoff(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->retryConnectionWithBackoff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindService(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/desktopmode/UiManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$1;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/desktopmode/UiManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$2;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-direct {p1}, Lcom/android/server/desktopmode/PendingUiCommands;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    new-instance p1, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iput-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p3, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    new-instance p1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private synthetic lambda$dismissDialog$6(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->handleDismissDialog(II)V

    return-void
.end method

.method private synthetic lambda$dismissOverlay$9(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->handleDismissOverlay(II)V

    return-void
.end method

.method private synthetic lambda$finishActivity$25(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleFinishActivity(I)V

    return-void
.end method

.method private synthetic lambda$handleNavBarIcon$18(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$handleNavBarIcon$19(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$handleRemoveNavBarIcon$21(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$handleRemoveNavBarIcon$22(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$handleRemoveNotification$15(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleRemoveNotification$16(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleShowDialog$4(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$handleShowNotification$11(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleShowNotification$12(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleShowNotification$13(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleShowOverlay$8(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$handleStartActivity$24(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->retryConnectionWithBackoff()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v1, "Binder died, reconnecting"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeNavBarIcon$20(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$removeNotification$14(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method private synthetic lambda$setCurrentUserId$2(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    iget-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/PendingUiCommands;->clear()V

    iget-boolean p1, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showDialog$3(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$showDialogOnUiService$5(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$showNavBarIcon$17(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$showNotification$10(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method private synthetic lambda$showOverlay$7(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$startActivity$23(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method


# virtual methods
.method public final bindService()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService(), mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindService()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.desktopmode.uiservice"

    const-string v2, "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iget v3, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->retryConnectionWithBackoff()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to bind service"

    invoke-static {v0, v1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    const/4 p0, 0x0

    return p0
.end method

.method public bindUiServiceWithPendingCommand(Ljava/lang/Runnable;)Z
    .locals 2

    const/16 v0, 0x384

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public dismissDialog(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    return-void
.end method

.method public dismissDialog(II)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialog(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public dismissOverlay(II)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "external overlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal overlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public finishActivity(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishActivity(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentOverlayType(I)I
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentOverlayType(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentOverlayType(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final handleDismissDialog(II)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDismissDialog(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissDialog(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    const/16 v1, 0x385

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method public final handleDismissOverlay(II)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDismissOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissOverlay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    const/16 v1, 0x385

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method public final handleFinishActivity(I)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFinishActivity(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->finishActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x385

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method public final handleNavBarIcon(I)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNavBarIcon(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    const/16 v1, 0x384

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNavBarIcon(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x384

    const/4 v6, -0x1

    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda25;

    invoke-direct {v7, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final handleRemoteException(Landroid/os/RemoteException;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    return-void
.end method

.method public final handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoteException(), preserve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_1

    if-eqz p6, :cond_1

    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleRemoteException(), adding pending commands, type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", where="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final handleRemoveNavBarIcon(I)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveNavBarIcon(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    const/16 v1, 0x385

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNavBarIcon(I)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x385

    const/4 v6, -0x1

    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda27;

    invoke-direct {v7, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final handleRemoveNotification(I)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    const/16 v1, 0x385

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNotification(I)V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x385

    const/4 v6, -0x1

    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda19;

    invoke-direct {v7, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    const-string v1, ", dialogType="

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShowDialog(), displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    const/16 v2, 0x384

    invoke-virtual {p0, v2, p2, p1, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p0, v2, p2, p1, v0}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    sget-object p0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showDialog() mChangingStandaloneMode!! displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialog() wrong type value!! dialogType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/server/desktopmode/UiManager$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/desktopmode/UiManager$3;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/server/desktopmode/UiManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$4;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    :goto_0
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/UiManager;->showDialogOnUiService(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final handleShowNotification(I)V
    .locals 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    const/16 v1, 0x384

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    new-instance v3, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    sget-object p0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleShowNotification(), mChangingStandaloneMode!!type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x384

    const/4 v6, -0x1

    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v8, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    const/16 v0, 0x384

    invoke-virtual {p0, v0, p2, p1, v8}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/android/server/desktopmode/UiManager$5;

    invoke-direct {v0, p0, p3}, Lcom/android/server/desktopmode/UiManager$5;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showOverlay(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v3, p1

    const/4 v4, 0x1

    const/16 v5, 0x384

    const/4 v7, -0x1

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartActivity(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v8, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda13;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    const/16 v0, 0x384

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, v8}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/server/desktopmode/UiManager$6;

    invoke-direct {v0, p0, p3}, Lcom/android/server/desktopmode/UiManager$6;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :try_start_0
    iget-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->startActivity(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    const/4 v4, 0x1

    const/16 v5, 0x384

    const/4 v7, -0x1

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public hasOverlay(II)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasOverlay(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final postUnbindServiceRunnable()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "postUnbindServiceRunnable()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public removeNavBarIcon(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNavBarIcon(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public removeNotification(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final removeUnbindServiceRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final retryConnectionWithBackoff()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00    # 600000.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object v3, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    sget-object v2, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind service on attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setChangingStandaloneMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChangingStandaloneMode(), mChangingStandaloneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/PendingUiCommands;->flushCommands()V

    :cond_1
    return-void
.end method

.method public setCurrentUserId(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialog(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public final showDialogOnUiService(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p4}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showDialog(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const/16 v4, 0x384

    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda21;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    move-object v1, p0

    move v5, p2

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public showNavBarIcon(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNavBarIcon(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public showNotification(I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public showOverlay(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final unbindService()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindService(), mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unlink death recipient"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    :cond_3
    return-void
.end method

.method public final unbindServiceIfHasNoUiElement()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/PendingUiCommands;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasUiElement()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindServiceIfHasNoUiElement(), hasElement="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/PendingUiCommands;->clear()V

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindService()V

    :cond_3
    return-void
.end method
