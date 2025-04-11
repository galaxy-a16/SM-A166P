.class public Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 289
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 290
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isAutomaticTimeEnabled()Z
    .locals 2

    .line 305
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time"

    const/4 v1, 0x0

    .line 306
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onChange(Z)V
    .locals 0

    .line 296
    invoke-virtual {p0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->isAutomaticTimeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    const-string p1, "automatic time enabled"

    invoke-static {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
