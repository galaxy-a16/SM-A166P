.class public final synthetic Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

.field public final synthetic f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

    iput-object p2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;

    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger/DeviceStateHandler;->$r8$lambda$t74QjPw55G33ezm0LxIxafTphIg(Lcom/android/server/soundtrigger/DeviceStateHandler$DeviceStateListener;Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;)V

    return-void
.end method
