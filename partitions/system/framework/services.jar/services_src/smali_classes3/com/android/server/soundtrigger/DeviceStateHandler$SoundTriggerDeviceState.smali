.class public final enum Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
.super Ljava/lang/Enum;
.source "DeviceStateHandler.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public static final enum CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public static final enum DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public static final enum ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;


# direct methods
.method public static synthetic $values()[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
    .locals 3

    .line 49
    sget-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    sget-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    sget-object v2, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 51
    new-instance v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const-string v1, "CRITICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 52
    new-instance v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const-string v1, "ENABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    .line 49
    invoke-static {}, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->$values()[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    move-result-object v0

    sput-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->$VALUES:[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
    .locals 1

    .line 49
    const-class v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->$VALUES:[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-object v0
.end method
