.class public Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;
.super Ljava/lang/Object;
.source "SemTestHalHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public biometricId:I

.field public callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

.field public callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public code:I

.field public delay:J

.field public groupId:I

.field public value:I

.field public vendorCode:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 87
    iput p3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 78
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 79
    iput p3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    .line 80
    iput p4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    .line 81
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x3e8

    .line 82
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    return-void
.end method


# virtual methods
.method public getCallbackType()Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    return-object p0
.end method

.method public getCode()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    return p0
.end method

.method public getDelay()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    return-wide v0
.end method

.method public getValue()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    return p0
.end method

.method public getVendorCode()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    return p0
.end method

.method public isFinishEnroll()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public run()V
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTestHalHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$1;->$SwitchMap$com$android$server$biometrics$sensors$SemTestHalHelper$CallbackType:[I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->biometricId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->groupId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverEnumerate(III)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverTspEvent(I)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverAuthenticationResult(I)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverEnrollResult(I)V

    goto :goto_0

    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverErrorEvent(II)V

    goto :goto_0

    .line 95
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverAcquiredEvent(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDelay(J)Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    return-object p0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
