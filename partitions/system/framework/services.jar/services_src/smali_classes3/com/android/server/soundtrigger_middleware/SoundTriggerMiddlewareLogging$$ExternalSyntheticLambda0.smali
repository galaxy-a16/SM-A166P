.class public final synthetic Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->$r8$lambda$omr_3iLHATCaBObf1XZZ_swwaG8(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;

    move-result-object p0

    return-object p0
.end method
