.class public final Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/ISemLidStateChangedListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISemLidStateChangedListener;)V
    .locals 0

    .line 4237
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4238
    iput p2, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    .line 4239
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mListener:Landroid/hardware/input/ISemLidStateChangedListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 4244
    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lid state changed listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$monLidStateChangedListenerDied(Lcom/android/server/input/InputManagerService;I)V

    return-void
.end method

.method public notifyLidStateChanged(JZ)V
    .locals 1

    .line 4252
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mListener:Landroid/hardware/input/ISemLidStateChangedListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/ISemLidStateChangedListener;->onLidStateChanged(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to notify process "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " that lid state changed, assuming it died."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "InputManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4256
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->binderDied()V

    :goto_0
    return-void
.end method
