.class public final enum Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;
.super Ljava/lang/Enum;
.source "SoundTriggerMiddlewareLogging.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

.field public static final enum ATTACH:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

.field public static final enum LIST_MODULE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;


# direct methods
.method public static synthetic $values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;
    .locals 2

    .line 565
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->ATTACH:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->LIST_MODULE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    filled-new-array {v0, v1}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 566
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->ATTACH:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    .line 567
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    const-string v1, "LIST_MODULE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->LIST_MODULE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    .line 565
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->$values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    move-result-object v0

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 565
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;
    .locals 1

    .line 565
    const-class v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;
    .locals 1

    .line 565
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->$VALUES:[Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    return-object v0
.end method
