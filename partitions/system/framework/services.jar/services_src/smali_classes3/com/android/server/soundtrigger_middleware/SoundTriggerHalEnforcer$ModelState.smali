.class final enum Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
.super Ljava/lang/Enum;
.source "SoundTriggerHalEnforcer.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

.field public static final enum ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

.field public static final enum INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

.field public static final enum PENDING_STOP:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;


# direct methods
.method public static synthetic $values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    .locals 3

    .line 46
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->PENDING_STOP:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->INACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 50
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 52
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    const-string v1, "PENDING_STOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->PENDING_STOP:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    .line 46
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->$values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    move-result-object v0

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    .locals 1

    .line 46
    const-class v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger_middleware/SoundTriggerHalEnforcer$ModelState;

    return-object v0
.end method
