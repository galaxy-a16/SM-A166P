.class public final synthetic Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final synthetic f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$AudioHandler;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-void
.end method


# virtual methods
.method public final run(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-static {v0, p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->$r8$lambda$_1Kmt289a1UDQI38TMzcmLIu0lc(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void
.end method
