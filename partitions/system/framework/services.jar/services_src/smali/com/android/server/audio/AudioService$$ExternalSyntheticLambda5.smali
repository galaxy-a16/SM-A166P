.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/audio/AudioService;

    check-cast p1, Landroid/media/PlayerBase;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->$r8$lambda$6GNA3vR_O1sI2zRAs_AHVYNChAE(Lcom/android/server/audio/AudioService;Landroid/media/PlayerBase;)V

    return-void
.end method
