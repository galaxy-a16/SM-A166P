.class final enum Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
.super Ljava/lang/Enum;
.source "SoundTriggerModule.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public static final enum ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public static final enum INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field public static final enum LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;


# direct methods
.method public static synthetic $values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    .locals 3

    .line 217
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 219
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 221
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const-string v1, "LOADED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 223
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    const-string v1, "ACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 217
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->$values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    move-result-object v0

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    .locals 1

    .line 217
    const-class v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    .locals 1

    .line 217
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    return-object v0
.end method
