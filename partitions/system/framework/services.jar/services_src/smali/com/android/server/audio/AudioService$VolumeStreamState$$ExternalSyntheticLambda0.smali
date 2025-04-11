.class public final synthetic Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService$VolumeStreamState;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->$r8$lambda$eFRkPK1KsYirMnKXevC2kkdn2mw(Lcom/android/server/audio/AudioService$VolumeStreamState;II)V

    return-void
.end method
