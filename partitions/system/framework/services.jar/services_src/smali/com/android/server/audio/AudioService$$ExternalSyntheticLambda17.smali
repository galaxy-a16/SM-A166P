.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/audio/AudioService;

    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/audio/AudioService;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda17;->f$1:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/server/audio/AudioService;->$r8$lambda$ymj5ipCNMnZaaeHU3Gu7-RnP-Ns(Lcom/android/server/audio/AudioService;ZLjava/lang/Integer;)V

    return-void
.end method
