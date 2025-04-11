.class public final Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IMultiFingerGestureListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IMultiFingerGestureListener;)V
    .locals 0

    .line 4267
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4268
    iput p2, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    .line 4269
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mListener:Landroid/hardware/input/IMultiFingerGestureListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 4274
    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiFingerGesture listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget p0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    invoke-static {v0, p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$monMultiFingerGestureListenerDied(Lcom/android/server/input/InputManagerService;I)V

    return-void
.end method

.method public notifyMultiFingerGesture(II)V
    .locals 1

    .line 4282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mListener:Landroid/hardware/input/IMultiFingerGestureListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IMultiFingerGestureListener;->onMultiFingerGesture(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to notify process "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " that multi finge gesture was made, assuming it died."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InputManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4286
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->binderDied()V

    :goto_0
    return-void
.end method
