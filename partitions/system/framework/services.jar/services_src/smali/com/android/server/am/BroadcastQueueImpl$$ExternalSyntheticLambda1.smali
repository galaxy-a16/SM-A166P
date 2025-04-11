.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iput-wide p2, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iget-wide v1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->$r8$lambda$WIdMG70jm18PyEraCgXTGPxr1kI(Lcom/android/server/am/BroadcastQueueImpl;J)Z

    move-result p0

    return p0
.end method
