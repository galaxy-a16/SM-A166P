.class public Lcom/samsung/android/server/audio/ScreenSharingHelper$2;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "ScreenSharingHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    const/16 p1, 0x3e8

    .line 124
    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    .line 125
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public func()Ljava/lang/Boolean;
    .locals 3

    .line 130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 138
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fgetmIsDLNAEnabled(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    if-eq v2, p0, :cond_1

    const/4 p0, 0x3

    if-ne v2, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    throw p0
.end method

.method public bridge synthetic func()Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->func()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
