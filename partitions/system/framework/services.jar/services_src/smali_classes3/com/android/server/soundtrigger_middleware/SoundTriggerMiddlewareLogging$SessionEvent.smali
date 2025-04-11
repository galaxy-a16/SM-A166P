.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "SoundTriggerMiddlewareLogging.java"


# instance fields
.field public final mException:Ljava/lang/Exception;

.field public final mParams:[Ljava/lang/Object;

.field public final mReturnValue:Ljava/lang/Object;

.field public final mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mException:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mReturnValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mParams:[Ljava/lang/Object;

    return-void
.end method

.method public static varargs createForException(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Exception;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;
    .locals 2

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs createForReturn(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;
    .locals 2

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs createForVoid(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;[Ljava/lang/Object;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;
    .locals 2

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mParams:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->-$$Nest$smprintArgs(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const-string v1, " -> ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mException:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mReturnValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mReturnValue:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->eventToString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$SessionEvent;->mException:Ljava/lang/Exception;

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->printSystemLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object p0
.end method
