.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

.field public final synthetic f$1:Landroid/hardware/broadcastradio/ProgramListChunk;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramListChunk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/broadcastradio/ProgramListChunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/broadcastradio/ProgramListChunk;

    invoke-static {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->$r8$lambda$4a-22vITs1MfuwG80g_kC7XvioQ(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramListChunk;)V

    return-void
.end method
