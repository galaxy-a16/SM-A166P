.class public Lcom/android/server/power/ScreenCurtainController$4;
.super Ljava/lang/Object;
.source "ScreenCurtainController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$4;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "ScreenCurtainController"

    const-string v1, "DeathRecipient: binderDied()"

    .line 532
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController$4;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {v0}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmHandler(Lcom/android/server/power/ScreenCurtainController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$4;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p0}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmHandler(Lcom/android/server/power/ScreenCurtainController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x7

    .line 535
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 534
    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 535
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 533
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
